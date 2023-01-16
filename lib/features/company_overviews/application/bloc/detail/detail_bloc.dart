import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:leap_test_fl_chart/features/company_overviews/application/i_api.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_symbol.dart';
import 'package:leap_test_fl_chart/features/core/domain/error_object.dart';
import 'package:leap_test_fl_chart/features/core/infrastructure/network_connectivity.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

@injectable
class DetailBloc extends Bloc<DetailEvent, DetailState> {
  late CompanySymbol _symbol;

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

  DetailBloc(this._api) : super(const DetailState.load()) {
    on<_Init>(_onInit);
    on<_Update>(_onUpdate);
    on<_Network>(_onNetwork);
  }

  _onInit(_Init event, Emitter<DetailState> emit) async {
    _symbol = event.data.symbol;
    emit(DetailState.success(data: event.data));
    await initialise();
  }

  _onUpdate(_Update event, Emitter<DetailState> emit) async {
    emit(const DetailState.load());
    var result = await _api.data(_symbol);
    result.fold(
      (f) => emit(DetailState.failure(failure: f)),
      (r) => emit(DetailState.success(data: r)),
    );
  }

  _onNetwork(_Network event, Emitter<DetailState> emit) async {
    if (event.avalable) {
      // add(const _Update());
    } else {
      emit(DetailState.failure(failure: ErrorObject.noConnection));
    }
  }
}
