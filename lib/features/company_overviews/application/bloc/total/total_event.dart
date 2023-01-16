part of 'total_bloc.dart';

@freezed
class TotalEvent with _$TotalEvent {
  const factory TotalEvent.init() = _Init;
  const factory TotalEvent.update() = _Update;
  const factory TotalEvent.network({
    required bool avalable,
  }) = _Network;
}
