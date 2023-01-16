import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/total_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/colors.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/indicator.dart';
import 'package:leap_test_fl_chart/features/core/presentation/routes/router.gr.dart';

class Legend extends StatelessWidget {
  const Legend({
    Key? key,
    required this.data,
  }) : super(key: key);

  final TotalData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data.companies
          .map((e) => CompanyIndicator(
                data: e,
                companyIndex: data.companies.indexOf(e),
              ))
          .toList(),
    );
  }
}

class CompanyIndicator extends StatelessWidget {
  const CompanyIndicator({
    Key? key,
    required this.data,
    required this.companyIndex,
  }) : super(key: key);

  final CompanyData data;
  final int companyIndex;

  @override
  Widget build(BuildContext context) {
    final int colorIndex = companyIndex % sectionColors.length;

    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(
          DetailRoute(
            data: data,
            backgroundColor: sectionColors[colorIndex],
          ),
        );
      },
      child: Indicator(
        color: sectionColors[colorIndex],
        text: '(${data.symbol}) ${data.name}',
        isSquare: true,
      ),
    );
  }
}
