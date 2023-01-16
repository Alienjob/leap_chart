import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_symbol.dart';
part 'total_data.freezed.dart';

@freezed
class TotalData with _$TotalData {
  const factory TotalData({
    required List<CompanyData> companies,
    required DateTime updated,
    required double total,
  }) = _TotalData;

  factory TotalData.test() {
    return TotalData(
      companies: [
        const CompanyData(
          symbol: CompanySymbol.AAPL(),
          name: 'Эпл',
          description: 'Эпл компани',
          marketCapitalization: 100,
          currency: 'usd',
          country: 'country',
          sector: 'sector',
          industry: 'industry',
          address: 'address',
          dividendPerShare: 10,
        ),
        const CompanyData(
          symbol: CompanySymbol.AMZN(),
          name: 'Амазон',
          description: 'Амазон компани',
          marketCapitalization: 100,
          currency: 'usd',
          country: 'country',
          sector: 'sector',
          industry: 'industry',
          address: 'address',
          dividendPerShare: 10,
        ),
      ],
      total: 200,
      updated: DateTime.now(),
    );
  }
}
