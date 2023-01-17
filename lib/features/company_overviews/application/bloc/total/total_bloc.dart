import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:leap_test_fl_chart/features/company_overviews/application/i_api.dart';
import 'package:leap_test_fl_chart/features/core/domain/error_object.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/total_data.dart';
import 'package:leap_test_fl_chart/features/core/domain/failures.dart';
import 'package:leap_test_fl_chart/features/core/infrastructure/network_connectivity.dart';

part 'total_event.dart';
part 'total_state.dart';
part 'total_bloc.freezed.dart';

@injectable
class TotalBloc extends Bloc<TotalEvent, TotalState> {
  final IChartApi _api;

  final NetworkConnectivity _nc = NetworkConnectivity.instance;

  Future<void> initialise() async {
    _nc.initialise();
    _nc.myStream.listen((source) {
      var isConnected = source.values.toList()[0];
      add(_Network(avalable: isConnected));
    });
    await Future.delayed(const Duration(milliseconds: 200));
  }

  TotalBloc(this._api) : super(const TotalState.load()) {
    on<_Init>(_onInit);
    on<_Update>(_onUpdate);
    on<_Network>(_onNetwork);
  }

  _onInit(_Init event, Emitter<TotalState> emit) async {
    emit(const TotalState.load());
    await initialise();
    add(const _Update());
  }

  _onUpdate(_Update event, Emitter<TotalState> emit) async {
    emit(const TotalState.load());
    var result = await _api.total();
    result.fold(
      (f) => emit(TotalState.failure(failure: f)),
      (r) => emit(TotalState.success(data: r)),
    );
  }

  _onNetwork(_Network event, Emitter<TotalState> emit) async {
    if (event.avalable) {
      //add(const _Update()); too match queries
    } else {
      emit(TotalState.failure(failure: ErrorObject.noConnection));
    }
  }
}
