// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_symbol.freezed.dart';

@freezed
abstract class CompanySymbol with _$CompanySymbol {
  const CompanySymbol._();
  const factory CompanySymbol.AAPL() = _CompanySymbolAAPL;
  const factory CompanySymbol.AMZN() = _CompanySymbolAMZN;
  const factory CompanySymbol.GOOG() = _CompanySymbolGOOG;
  const factory CompanySymbol.MSFT() = _CompanySymbolMSFT;
  const factory CompanySymbol.FB() = _CompanySymbolFB;

  static List<CompanySymbol> all() {
    return [
      const CompanySymbol.AAPL(),
      const CompanySymbol.AMZN(),
      const CompanySymbol.GOOG(),
      const CompanySymbol.MSFT(),
      const CompanySymbol.FB(),
    ];
  }

  @override
  String toString() {
    if (this is _CompanySymbolAAPL) return 'AAPL';
    if (this is _CompanySymbolAMZN) return 'AMZN';
    if (this is _CompanySymbolGOOG) return 'GOOG';
    if (this is _CompanySymbolMSFT) return 'MSFT';
    if (this is _CompanySymbolFB) return 'FB';
    return 'error';
  }
}
