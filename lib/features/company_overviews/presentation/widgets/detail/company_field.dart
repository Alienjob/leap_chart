import 'package:flutter/material.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';

class CompanyField extends StatelessWidget {
  const CompanyField(this.title, this.value, this.data, {Key? key})
      : super(key: key);

  final String title;
  final CompanyData? data;
  final value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title:',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            ),
            Text((data == null) ? '...' : '$value'),
          ],
        ),
      ),
    );
  }
}
