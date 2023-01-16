part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState.load() = _DetailStateLoad;
  const factory DetailState.success({required CompanyData data}) =
      DetailStateSuccess;
  const factory DetailState.failure({required ErrorObject failure}) =
      DetailStateFailure;
}
