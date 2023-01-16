import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap_test_fl_chart/features/company_overviews/application/bloc/detail/detail_bloc.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/detail/detail_card.dart';
import 'package:leap_test_fl_chart/features/core/domain/error_object.dart';

class DetailForm extends StatelessWidget {
  const DetailForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Card(
            color: Colors.white60,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  BlocBuilder<DetailBloc, DetailState>(
                    builder: (context, state) {
                      return state.map(
                        load: (loadState) =>
                            const DetailCard(data: null, failure: null),
                        success: (successState) =>
                            DetailCard(data: successState.data, failure: null),
                        failure: (failureState) => DetailCard(
                            data: null, failure: failureState.failure),
                      );
                    },
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
