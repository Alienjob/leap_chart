// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:leap_test_fl_chart/features/company_overviews/application/bloc/detail/detail_bloc.dart'
    as _i6;
import 'package:leap_test_fl_chart/features/company_overviews/application/bloc/total/total_bloc.dart'
    as _i5;
import 'package:leap_test_fl_chart/features/company_overviews/application/i_api.dart'
    as _i3;
import 'package:leap_test_fl_chart/features/company_overviews/infrastructure/alphavantage_api.dart'
    as _i4;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IChartApi>(() => _i4.AlphavantageChartApi());
    gh.factory<_i5.TotalBloc>(() => _i5.TotalBloc(gh<_i3.IChartApi>()));
    gh.factory<_i6.DetailBloc>(() => _i6.DetailBloc(gh<_i3.IChartApi>()));
    return this;
  }
}
