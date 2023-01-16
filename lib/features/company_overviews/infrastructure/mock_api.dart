import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:leap_test_fl_chart/features/company_overviews/application/i_api.dart';
import 'package:leap_test_fl_chart/features/core/domain/error_object.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/total_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_symbol.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/core/domain/failures.dart';

//@LazySingleton(as: IChartApi)
class MockChartApi implements IChartApi {
  @override
  Future<Either<ErrorObject, CompanyData>> data(CompanySymbol symbol) async {
    try {
      return Right(CompanyData.fromMap(
          symbol: symbol,
          data: jsonDecode(await rootBundle.loadString(
            'assets/mock_data.json',
          ))['$symbol']));
    } catch (e) {
      return Left(ErrorObject.dataParsing);
    }
  }

  @override
  Future<Either<ErrorObject, TotalData>> total() async {
    Map<CompanySymbol, CompanyData> data = {};
    double total = 0;
    try {
      var queries = CompanySymbol.all().map((symbol) async {
        Map<String, dynamic> map = jsonDecode(
            await rootBundle.loadString('assets/mock_data.json'))['$symbol'];
        return MapEntry<CompanySymbol, Map<String, dynamic>>(symbol, map);
      });
      await Future.delayed(const Duration(seconds: 5));
      var answers = await Future.wait(queries);
      for (var entry in answers) {
        data[entry.key] =
            CompanyData.fromMap(symbol: entry.key, data: entry.value);
        total += data[entry.key]!.marketCapitalization;
      }

      return Right(TotalData(
        companies: data.values.toList(),
        total: total,
        updated: DateTime.now(),
      ));
    } catch (e) {
      return Left(ErrorObject.dataParsing);
    }
  }
}
