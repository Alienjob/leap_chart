import 'package:equatable/equatable.dart';
import 'package:leap_test_fl_chart/features/core/domain/exceptions.dart';

import 'failures.dart';

class ErrorObject extends Equatable {
  const ErrorObject({
    required this.title,
    required this.message,
  });
  static final noConnection = ErrorObject.mapFailureToErrorObject(
    failure: const FailureEntity.noConnectionFailure(),
  );
  static final dataParsing = ErrorObject.mapFailureToErrorObject(
    failure: const FailureEntity.dataParsingFailure(),
  );
  static final server = ErrorObject.mapFailureToErrorObject(
    failure: const FailureEntity.serverFailure(),
  );
  static final frequency = ErrorObject.mapFailureToErrorObject(
    failure: const FailureEntity.apiFrequencyFailure(),
  );

  final String title;
  final String message;

  @override
  List<Object?> get props => [title, message];

  static ErrorObject mapFailureToErrorObject({required FailureEntity failure}) {
    return failure.when(
      serverFailure: () => const ErrorObject(
        title: 'Error Code: INTERNAL_SERVER_FAILURE',
        message: 'It seems that the server is not reachable at the moment, try '
            'again later, should the issue persist please reach out to the '
            'developer',
      ),
      dataParsingFailure: () => const ErrorObject(
        title: 'Error Code: JSON_PARSING_FAILURE',
        message: 'It seems that the app needs to be updated to reflect the , '
            'changed server data structure, if no update is '
            'available on the store please reach out to the developer',
      ),
      noConnectionFailure: () => const ErrorObject(
        title: 'Error Code: NO_CONNECTIVITY',
        message: 'It seems that your device is not connected to the network, '
            'please check your internet connectivity or try again later.',
      ),
      apiFrequencyFailure: () => const ErrorObject(
        title: 'Error Code: API_FREQUENCY',
        message: 'It seems that standard API call frequency overrequested.'
            'It is 5 calls per minute and 500 calls per day.'
            'Please try again later.',
      ),
    );
  }
}
