import 'package:flutter/material.dart';
import 'package:leap_test_fl_chart/features/company_overviews/domain/company_data.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/detail/company_field.dart';
import 'package:leap_test_fl_chart/features/company_overviews/presentation/widgets/detail/error_description.dart';
import 'package:leap_test_fl_chart/features/core/domain/error_object.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    Key? key,
    required this.data,
    required this.failure,
  }) : super(key: key);

  final CompanyData? data;
  final ErrorObject? failure;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (failure != null)
            ErrorDescriptionField(failure!.title, failure!.message),
          CompanyField('Symbol', data?.symbol, data),
          CompanyField('Name', data?.name, data),
          CompanyField('Description', data?.description, data),
          CompanyField(
              'Market capitalization', data?.marketCapitalization, data),
          CompanyField('Currency', data?.currency, data),
          CompanyField('Country', data?.country, data),
          CompanyField('Sector', data?.sector, data),
          CompanyField('Industry', data?.industry, data),
          CompanyField('Address', data?.address, data),
          CompanyField('Dividend per share', data?.dividendPerShare, data),
        ],
      ),
    );
  }
}
