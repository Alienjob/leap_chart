import 'package:flutter/material.dart';
import 'package:leap_test_fl_chart/features/core/domain/error_object.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/total_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/chart_section_data.dart';

class ChartFailure extends StatelessWidget {
  ChartFailure({
    Key? key,
    required this.failure,
  }) : super(key: key);
  final ErrorObject failure;
  final TotalData data = TotalData(companies: [
    CompanyData.percent(percent: 100),
  ], updated: DateTime.now(), total: 100);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Card(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40,
                    sections: showingSections(
                      data: data,
                      touchedIndex: -1,
                      showTitle: false,
                      failure: failure,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 28,
            ),
          ],
        ),
      ),
    );
  }
}
