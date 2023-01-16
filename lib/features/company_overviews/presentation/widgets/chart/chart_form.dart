import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap_test_fl_chart/features/company_overviews/application/bloc/total/total_bloc.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_symbol.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/total_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/chart_failure.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/chart_loaded.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/chart_loading.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/chart/legend.dart';
import 'package:leap_test_fl_chart/features/core/domain/error_object.dart';
import 'package:leap_test_fl_chart/features/core/presentation/routes/router.gr.dart';

class ChartForm extends StatelessWidget {
  const ChartForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<TotalBloc, TotalState>(
        builder: (context, state) {
          return Column(
            children: [
              state.map(
                load: (loadState) => const ChartLoading(),
                success: (successState) => ChartLoaded(data: successState.data),
                failure: (failureState) =>
                    ChartFailure(failure: failureState.failure),
              ),
              state.map(
                load: (loadState) => const LoadingButton(),
                success: (successState) => const UpdateButton(),
                failure: (failureState) => const UpdateButton(),
              ),
              state.map(
                load: (loadState) => Container(),
                success: (successState) => Legend(data: successState.data),
                failure: (failureState) =>
                    FailureDescription(failure: failureState.failure),
              ),
            ],
          );
        },
      ),
    );
  }
}

class FailureDescription extends StatelessWidget {
  const FailureDescription({
    Key? key,
    required this.failure,
  }) : super(key: key);

  final ErrorObject failure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(failure.title),
          const Divider(),
          Text(failure.message),
        ],
      ),
    );
  }
}

class UpdateButton extends StatelessWidget {
  const UpdateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          BlocProvider.of<TotalBloc>(context).add(const TotalEvent.update());
        },
        child: const Text('REFRESH'));
  }
}

class LoadingButton extends StatelessWidget {
  const LoadingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ElevatedButton(onPressed: null, child: Text('Loading...'));
  }
}
