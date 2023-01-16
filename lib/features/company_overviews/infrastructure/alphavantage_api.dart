// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:leap_test_fl_chart/features/company_overviews/application/i_api.dart';
import 'package:leap_test_fl_chart/features/core/domain/error_object.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/total_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_symbol.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/core/domain/exceptions.dart';
import 'package:leap_test_fl_chart/features/core/domain/failures.dart';
import 'package:dio/dio.dart';
import 'package:leap_test_fl_chart/features/core/infrastructure/network_connectivity.dart';

// const _api_key = 'CGT07UAPRUAX5JF1'; потрачено
const _api_key = 'MSWKU3EQ69FPU6Z3';

@LazySingleton(as: IChartApi)
class AlphavantageChartApi implements IChartApi {
  GlobalKey key = GlobalKey();
  final NetworkConnectivity _nc = NetworkConnectivity.instance;
  bool isConnected = false;

  bool isInitialised = false;

  Future<void> initialise() async {
    _nc.initialise();
    _nc.myStream.listen((source) {
      isConnected = source.values.toList()[0];
    });
    await Future.delayed(const Duration(milliseconds: 200));
    isInitialised = true;
  }

  @override
  Future<Either<ErrorObject, CompanyData>> data(CompanySymbol symbol) async {
    try {
      if (!isInitialised) {
        await initialise();
      }
      if (!isConnected) {
        return Left(ErrorObject.noConnection);
      }
      final url = 'https://www.alphavantage.co/query?function=OVERVIEW&'
          'symbol=$symbol&apikey=$_api_key';

      var response = await Dio().get(url);
      print(response);
      if (response.statusCode != 200) {
        return Left(ErrorObject.server);
      }
      if ((response.data is Map) &&
          ((response.data as Map).keys.contains('Note'))) {
        throw Exception('ApiFrequencyException');
      }

      return Right(CompanyData.fromMap(symbol: symbol, data: response.data));
    } on DioError catch (e) {
      print(e.message);
      return Left(ErrorObject.noConnection);
    } catch (e) {
      print(e);
      if ((e is Exception) &&
          ((e.toString() == 'Exception: ApiFrequencyException')))
        return Left(ErrorObject.frequency);
      return Left(ErrorObject.dataParsing);
    }
  }

  @override
  Future<Either<ErrorObject, TotalData>> total() async {
    Map<CompanySymbol, CompanyData> data = {};
    double total = 0;

    try {
      if (!isInitialised) {
        await initialise();
      }

      if (!isConnected) return Left(ErrorObject.noConnection);

      var queries = CompanySymbol.all().map((symbol) async {
        final url = 'https://www.alphavantage.co/query?function=OVERVIEW&'
            'symbol=$symbol&apikey=$_api_key';

        var response = await Dio().get(url);
        print(response);
        if (response.statusCode != 200) {
          throw DioError(requestOptions: RequestOptions(path: url));
        }
        if ((response.data is Map) &&
            ((response.data as Map).keys.contains('Note'))) {
          throw Exception('ApiFrequencyException');
        }

        Map<String, dynamic> map = response.data;

        return MapEntry<CompanySymbol, Map<String, dynamic>>(symbol, map);
      });
      await Future.delayed(const Duration(seconds: 1));
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
    } on DioError catch (e) {
      print(e.message);
      return Left(ErrorObject.noConnection);
    } catch (e) {
      print(e);
      if ((e is Exception) &&
          ((e.toString() == 'Exception: ApiFrequencyException')))
        return Left(ErrorObject.frequency);
      return Left(ErrorObject.dataParsing);
    }
  }
}
