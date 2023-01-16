import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap_test_fl_chart/features/company_overviews/application/bloc/detail/detail_bloc.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/detail/detail_form.dart';
import 'package:leap_test_fl_chart/features/core/configure_dependencies.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {super.key, required this.data, required this.backgroundColor});

  final CompanyData data;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<DetailBloc>()..add(DetailEvent.init(data: data)),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: DetailAppBar(data: data),
        body: const DetailForm(),
      ),
    );
  }
}

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailAppBar({
    Key? key,
    required this.data,
  }) : super(key: key);

  final CompanyData data;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(data.name),
      actions: [
        IconButton(
          onPressed: (() => BlocProvider.of<DetailBloc>(context)
              .add(const DetailEvent.update())),
          icon: const Icon(Icons.refresh),
        )
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
