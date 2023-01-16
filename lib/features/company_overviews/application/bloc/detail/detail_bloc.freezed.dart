// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CompanyData data) init,
    required TResult Function() update,
    required TResult Function(bool avalable) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CompanyData data)? init,
    TResult? Function()? update,
    TResult? Function(bool avalable)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CompanyData data)? init,
    TResult Function()? update,
    TResult Function(bool avalable)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Update value) update,
    required TResult Function(_Network value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Update value)? update,
    TResult? Function(_Network value)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Update value)? update,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  @useResult
  $Res call({CompanyData data});

  $CompanyDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Init(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompanyData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyDataCopyWith<$Res> get data {
    return $CompanyDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init({required this.data});

  @override
  final CompanyData data;

  @override
  String toString() {
    return 'DetailEvent.init(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CompanyData data) init,
    required TResult Function() update,
    required TResult Function(bool avalable) network,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CompanyData data)? init,
    TResult? Function()? update,
    TResult? Function(bool avalable)? network,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CompanyData data)? init,
    TResult Function()? update,
    TResult Function(bool avalable)? network,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Update value) update,
    required TResult Function(_Network value) network,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Update value)? update,
    TResult? Function(_Network value)? network,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Update value)? update,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements DetailEvent {
  const factory _Init({required final CompanyData data}) = _$_Init;

  CompanyData get data;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update();

  @override
  String toString() {
    return 'DetailEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Update);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CompanyData data) init,
    required TResult Function() update,
    required TResult Function(bool avalable) network,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CompanyData data)? init,
    TResult? Function()? update,
    TResult? Function(bool avalable)? network,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CompanyData data)? init,
    TResult Function()? update,
    TResult Function(bool avalable)? network,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Update value) update,
    required TResult Function(_Network value) network,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Update value)? update,
    TResult? Function(_Network value)? network,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Update value)? update,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements DetailEvent {
  const factory _Update() = _$_Update;
}

/// @nodoc
abstract class _$$_NetworkCopyWith<$Res> {
  factory _$$_NetworkCopyWith(
          _$_Network value, $Res Function(_$_Network) then) =
      __$$_NetworkCopyWithImpl<$Res>;
  @useResult
  $Res call({bool avalable});
}

/// @nodoc
class __$$_NetworkCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$_Network>
    implements _$$_NetworkCopyWith<$Res> {
  __$$_NetworkCopyWithImpl(_$_Network _value, $Res Function(_$_Network) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avalable = null,
  }) {
    return _then(_$_Network(
      avalable: null == avalable
          ? _value.avalable
          : avalable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Network implements _Network {
  const _$_Network({required this.avalable});

  @override
  final bool avalable;

  @override
  String toString() {
    return 'DetailEvent.network(avalable: $avalable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Network &&
            (identical(other.avalable, avalable) ||
                other.avalable == avalable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avalable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkCopyWith<_$_Network> get copyWith =>
      __$$_NetworkCopyWithImpl<_$_Network>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CompanyData data) init,
    required TResult Function() update,
    required TResult Function(bool avalable) network,
  }) {
    return network(avalable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CompanyData data)? init,
    TResult? Function()? update,
    TResult? Function(bool avalable)? network,
  }) {
    return network?.call(avalable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CompanyData data)? init,
    TResult Function()? update,
    TResult Function(bool avalable)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(avalable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Update value) update,
    required TResult Function(_Network value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Update value)? update,
    TResult? Function(_Network value)? network,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Update value)? update,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements DetailEvent {
  const factory _Network({required final bool avalable}) = _$_Network;

  bool get avalable;
  @JsonKey(ignore: true)
  _$$_NetworkCopyWith<_$_Network> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(CompanyData data) success,
    required TResult Function(ErrorObject failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(CompanyData data)? success,
    TResult? Function(ErrorObject failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(CompanyData data)? success,
    TResult Function(ErrorObject failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailStateLoad value) load,
    required TResult Function(DetailStateSuccess value) success,
    required TResult Function(DetailStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailStateLoad value)? load,
    TResult? Function(DetailStateSuccess value)? success,
    TResult? Function(DetailStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailStateLoad value)? load,
    TResult Function(DetailStateSuccess value)? success,
    TResult Function(DetailStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DetailStateLoadCopyWith<$Res> {
  factory _$$_DetailStateLoadCopyWith(
          _$_DetailStateLoad value, $Res Function(_$_DetailStateLoad) then) =
      __$$_DetailStateLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DetailStateLoadCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_DetailStateLoad>
    implements _$$_DetailStateLoadCopyWith<$Res> {
  __$$_DetailStateLoadCopyWithImpl(
      _$_DetailStateLoad _value, $Res Function(_$_DetailStateLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DetailStateLoad implements _DetailStateLoad {
  const _$_DetailStateLoad();

  @override
  String toString() {
    return 'DetailState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DetailStateLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(CompanyData data) success,
    required TResult Function(ErrorObject failure) failure,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(CompanyData data)? success,
    TResult? Function(ErrorObject failure)? failure,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(CompanyData data)? success,
    TResult Function(ErrorObject failure)? failure,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailStateLoad value) load,
    required TResult Function(DetailStateSuccess value) success,
    required TResult Function(DetailStateFailure value) failure,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailStateLoad value)? load,
    TResult? Function(DetailStateSuccess value)? success,
    TResult? Function(DetailStateFailure value)? failure,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailStateLoad value)? load,
    TResult Function(DetailStateSuccess value)? success,
    TResult Function(DetailStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _DetailStateLoad implements DetailState {
  const factory _DetailStateLoad() = _$_DetailStateLoad;
}

/// @nodoc
abstract class _$$DetailStateSuccessCopyWith<$Res> {
  factory _$$DetailStateSuccessCopyWith(_$DetailStateSuccess value,
          $Res Function(_$DetailStateSuccess) then) =
      __$$DetailStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({CompanyData data});

  $CompanyDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DetailStateSuccessCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateSuccess>
    implements _$$DetailStateSuccessCopyWith<$Res> {
  __$$DetailStateSuccessCopyWithImpl(
      _$DetailStateSuccess _value, $Res Function(_$DetailStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DetailStateSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompanyData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyDataCopyWith<$Res> get data {
    return $CompanyDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$DetailStateSuccess implements DetailStateSuccess {
  const _$DetailStateSuccess({required this.data});

  @override
  final CompanyData data;

  @override
  String toString() {
    return 'DetailState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateSuccessCopyWith<_$DetailStateSuccess> get copyWith =>
      __$$DetailStateSuccessCopyWithImpl<_$DetailStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(CompanyData data) success,
    required TResult Function(ErrorObject failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(CompanyData data)? success,
    TResult? Function(ErrorObject failure)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(CompanyData data)? success,
    TResult Function(ErrorObject failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailStateLoad value) load,
    required TResult Function(DetailStateSuccess value) success,
    required TResult Function(DetailStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailStateLoad value)? load,
    TResult? Function(DetailStateSuccess value)? success,
    TResult? Function(DetailStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailStateLoad value)? load,
    TResult Function(DetailStateSuccess value)? success,
    TResult Function(DetailStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DetailStateSuccess implements DetailState {
  const factory DetailStateSuccess({required final CompanyData data}) =
      _$DetailStateSuccess;

  CompanyData get data;
  @JsonKey(ignore: true)
  _$$DetailStateSuccessCopyWith<_$DetailStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailStateFailureCopyWith<$Res> {
  factory _$$DetailStateFailureCopyWith(_$DetailStateFailure value,
          $Res Function(_$DetailStateFailure) then) =
      __$$DetailStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorObject failure});
}

/// @nodoc
class __$$DetailStateFailureCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateFailure>
    implements _$$DetailStateFailureCopyWith<$Res> {
  __$$DetailStateFailureCopyWithImpl(
      _$DetailStateFailure _value, $Res Function(_$DetailStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$DetailStateFailure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ErrorObject,
    ));
  }
}

/// @nodoc

class _$DetailStateFailure implements DetailStateFailure {
  const _$DetailStateFailure({required this.failure});

  @override
  final ErrorObject failure;

  @override
  String toString() {
    return 'DetailState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateFailureCopyWith<_$DetailStateFailure> get copyWith =>
      __$$DetailStateFailureCopyWithImpl<_$DetailStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(CompanyData data) success,
    required TResult Function(ErrorObject failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(CompanyData data)? success,
    TResult? Function(ErrorObject failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(CompanyData data)? success,
    TResult Function(ErrorObject failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailStateLoad value) load,
    required TResult Function(DetailStateSuccess value) success,
    required TResult Function(DetailStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailStateLoad value)? load,
    TResult? Function(DetailStateSuccess value)? success,
    TResult? Function(DetailStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailStateLoad value)? load,
    TResult Function(DetailStateSuccess value)? success,
    TResult Function(DetailStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DetailStateFailure implements DetailState {
  const factory DetailStateFailure({required final ErrorObject failure}) =
      _$DetailStateFailure;

  ErrorObject get failure;
  @JsonKey(ignore: true)
  _$$DetailStateFailureCopyWith<_$DetailStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
