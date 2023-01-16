import 'package:auto_route/annotations.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/chart_page.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/detail_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ChartPage, initial: true),
    AutoRoute(page: DetailPage),
  ],
)
class $AppRouter {}
