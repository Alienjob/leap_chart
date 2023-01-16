import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/total_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/colors.dart';
import 'package:leap_test_fl_chart/features/core/domain/error_object.dart';

PieChartSectionData sectionData(CompanyData data, int companyIndex,
    double total, int touchedIndex, bool showTitle, ErrorObject? failure) {
  final isTouched = companyIndex == touchedIndex;
  final fontSize = isTouched ? 25.0 : 16.0;
  final radius = isTouched ? 60.0 : 50.0;
  final int colorIndex = companyIndex % sectionColors.length;
  final int percent =
      (data.marketCapitalization / (total == 0 ? 1 : total) * 100).toInt();

  return PieChartSectionData(
    color: (failure == null) ? sectionColors[colorIndex] : Colors.red,
    value: data.marketCapitalization,
    title: showTitle ? '$percent%' : '',
    radius: radius,
    titleStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: const Color(0xffffffff),
    ),
  );
}

List<PieChartSectionData> showingSections({
  required TotalData data,
  required int touchedIndex,
  bool showTitle = true,
  ErrorObject? failure,
}) {
  return data.companies
      .map((e) => sectionData(e, data.companies.indexOf(e), data.total,
          touchedIndex, showTitle, failure))
      .toList();
}
