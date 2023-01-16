part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.init({
    required CompanyData data,
  }) = _Init;
  const factory DetailEvent.update() = _Update;
  const factory DetailEvent.network({
    required bool avalable,
  }) = _Network;
}
