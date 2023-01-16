import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leap_test_fl_chart/features/core/configure_dependencies.dart';
import 'package:leap_test_fl_chart/features/core/presentation/routes/router.gr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'LEAP FL CHART',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
