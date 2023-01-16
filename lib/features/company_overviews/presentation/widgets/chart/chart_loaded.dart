import 'package:auto_route/auto_route.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/total_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/chart_section_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/colors.dart';
import 'package:leap_test_fl_chart/features/core/presentation/routes/router.gr.dart';

class ChartLoaded extends StatefulWidget {
  const ChartLoaded({
    Key? key,
    required this.data,
  }) : super(key: key);

  final TotalData data;

  @override
  State<ChartLoaded> createState() => _ChartLoadedState();
}

class _ChartLoadedState extends State<ChartLoaded> {
  late final TotalData initData;

  int touchedIndex = -1;

  @override
  void initState() {
    initData = widget.data;
    super.initState();
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
                    pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                          if (event is FlLongPressStart) {
                            AutoRouter.of(context).push(
                              DetailRoute(
                                  data: initData.companies[touchedIndex],
                                  backgroundColor: sectionColors[touchedIndex]),
                            );
                          }
                        });
                      },
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40,
                    sections: showingSections(
                      data: initData,
                      touchedIndex: touchedIndex,
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
