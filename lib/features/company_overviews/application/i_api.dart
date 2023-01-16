import 'package:dartz/dartz.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_symbol.dart';
import 'package:leap_test_fl_chart/features/core/domain/error_object.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/total_data.dart';

abstract class IChartApi {
  Future<Either<ErrorObject, CompanyData>> data(CompanySymbol symbol);
  Future<Either<ErrorObject, TotalData>> total();
}
