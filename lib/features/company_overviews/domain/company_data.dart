import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_symbol.dart';

part 'company_data.freezed.dart';

@freezed
abstract class CompanyData with _$CompanyData {
  const CompanyData._();
  const factory CompanyData({
    required CompanySymbol symbol,
    required String name,
    required String description,
    required double marketCapitalization,
    required String currency,
    required String country,
    required String sector,
    required String industry,
    required String address,
    required double dividendPerShare,
  }) = _CompanyData;

  factory CompanyData.empty({
    required CompanySymbol symbol,
  }) {
    return CompanyData(
      symbol: symbol,
      name: '$symbol',
      description: '',
      marketCapitalization: 0,
      currency: '',
      country: '',
      sector: '',
      industry: '',
      address: '',
      dividendPerShare: 0,
    );
  }
  factory CompanyData.percent({
    required double percent,
  }) {
    return CompanyData(
      symbol: const CompanySymbol.FB(),
      name: '',
      description: '',
      marketCapitalization: percent,
      currency: '',
      country: '',
      sector: '',
      industry: '',
      address: '',
      dividendPerShare: 0,
    );
  }
  factory CompanyData.error({
    required CompanySymbol symbol,
  }) {
    return CompanyData(
      symbol: symbol,
      name: '$symbol',
      description: 'wrong data format',
      marketCapitalization: 0,
      currency: '',
      country: '',
      sector: '',
      industry: '',
      address: '',
      dividendPerShare: 0,
    );
  }

  factory CompanyData.fromMap({
    required CompanySymbol symbol,
    required Map<String, dynamic> data,
  }) {
    try {
      return CompanyData(
        symbol: symbol,
        name: data['Name'],
        description: data['Description'],
        marketCapitalization:
            double.tryParse(data['MarketCapitalization']) ?? 0,
        currency: data['Currency'],
        country: data['Country'],
        sector: data['Sector'],
        industry: data['Industry'],
        address: data['Address'],
        dividendPerShare: double.tryParse(data['DividendPerShare']) ?? 0,
      );
    } catch (e) {
      return CompanyData.error(symbol: symbol);
    }
  }
}
