import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/chart_form.dart';
import 'package:leap_test_fl_chart/features/core/configure_dependencies.dart';
import 'package:leap_test_fl_chart/features/company_overviews/application/bloc/total/total_bloc.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TotalBloc>()..add(const TotalEvent.init()),
      child: Scaffold(
        appBar: AppBar(),
        body: const ChartForm(),
      ),
    );
  }
}
