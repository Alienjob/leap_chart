import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/total_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/chart_section_data.dart';

class ChartLoading extends StatefulWidget {
  const ChartLoading({
    Key? key,
  }) : super(key: key);

  @override
  State<ChartLoading> createState() => _ChartLoadingState();
}

class _ChartLoadingState extends State<ChartLoading>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  TotalData data = TotalData(companies: [
    CompanyData.percent(percent: 100),
    CompanyData.percent(percent: 0),
  ], updated: DateTime.now(), total: 100);

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 2500), vsync: this);
    animation = Tween<double>(begin: 0, end: 100).animate(controller)
      ..addListener(() {
        if (controller.isCompleted) {
          controller.repeat();
        }
        setState(() {
          data = TotalData(companies: [
            CompanyData.percent(percent: 100 - animation.value),
            CompanyData.percent(percent: animation.value),
          ], updated: DateTime.now(), total: 100);
        });
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
