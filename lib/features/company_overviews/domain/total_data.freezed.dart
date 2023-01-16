// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TotalData {
  List<CompanyData> get companies => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TotalDataCopyWith<TotalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalDataCopyWith<$Res> {
  factory $TotalDataCopyWith(TotalData value, $Res Function(TotalData) then) =
      _$TotalDataCopyWithImpl<$Res, TotalData>;
  @useResult
  $Res call({List<CompanyData> companies, DateTime updated, double total});
}

/// @nodoc
class _$TotalDataCopyWithImpl<$Res, $Val extends TotalData>
    implements $TotalDataCopyWith<$Res> {
  _$TotalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companies = null,
    Object? updated = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      companies: null == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyData>,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TotalDataCopyWith<$Res> implements $TotalDataCopyWith<$Res> {
  factory _$$_TotalDataCopyWith(
          _$_TotalData value, $Res Function(_$_TotalData) then) =
      __$$_TotalDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CompanyData> companies, DateTime updated, double total});
}

/// @nodoc
class __$$_TotalDataCopyWithImpl<$Res>
    extends _$TotalDataCopyWithImpl<$Res, _$_TotalData>
    implements _$$_TotalDataCopyWith<$Res> {
  __$$_TotalDataCopyWithImpl(
      _$_TotalData _value, $Res Function(_$_TotalData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companies = null,
    Object? updated = null,
    Object? total = null,
  }) {
    return _then(_$_TotalData(
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyData>,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_TotalData implements _TotalData {
  const _$_TotalData(
      {required final List<CompanyData> companies,
      required this.updated,
      required this.total})
      : _companies = companies;

  final List<CompanyData> _companies;
  @override
  List<CompanyData> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  final DateTime updated;
  @override
  final double total;

  @override
  String toString() {
    return 'TotalData(companies: $companies, updated: $updated, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TotalData &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_companies), updated, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TotalDataCopyWith<_$_TotalData> get copyWith =>
      __$$_TotalDataCopyWithImpl<_$_TotalData>(this, _$identity);
}

abstract class _TotalData implements TotalData {
  const factory _TotalData(
      {required final List<CompanyData> companies,
      required final DateTime updated,
      required final double total}) = _$_TotalData;

  @override
  List<CompanyData> get companies;
  @override
  DateTime get updated;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$$_TotalDataCopyWith<_$_TotalData> get copyWith =>
      throw _privateConstructorUsedError;
}
