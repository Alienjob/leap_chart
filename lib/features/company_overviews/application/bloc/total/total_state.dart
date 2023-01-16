part of 'total_bloc.dart';

@freezed
class TotalState with _$TotalState {
  const factory TotalState.load() = _TotalStateLoad;
  const factory TotalState.success({required TotalData data}) =
      TotalStateSuccess;
  const factory TotalState.failure({required ErrorObject failure}) =
      TotalStateFailure;
}
