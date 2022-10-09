// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultState<T> {
  T get data => throw _privateConstructorUsedError;
  ExceptionModel? get exception => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultStateCopyWith<T, ResultState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<T, $Res> {
  factory $ResultStateCopyWith(
          ResultState<T> value, $Res Function(ResultState<T>) then) =
      _$ResultStateCopyWithImpl<T, $Res>;
  $Res call({T data, ExceptionModel? exception, FormzStatus status});

  $ExceptionModelCopyWith<$Res>? get exception;
}

/// @nodoc
class _$ResultStateCopyWithImpl<T, $Res>
    implements $ResultStateCopyWith<T, $Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  final ResultState<T> _value;
  // ignore: unused_field
  final $Res Function(ResultState<T>) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? exception = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionModel?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }

  @override
  $ExceptionModelCopyWith<$Res>? get exception {
    if (_value.exception == null) {
      return null;
    }

    return $ExceptionModelCopyWith<$Res>(_value.exception!, (value) {
      return _then(_value.copyWith(exception: value));
    });
  }
}

/// @nodoc
abstract class _$$_ResultStateCopyWith<T, $Res>
    implements $ResultStateCopyWith<T, $Res> {
  factory _$$_ResultStateCopyWith(
          _$_ResultState<T> value, $Res Function(_$_ResultState<T>) then) =
      __$$_ResultStateCopyWithImpl<T, $Res>;
  @override
  $Res call({T data, ExceptionModel? exception, FormzStatus status});

  @override
  $ExceptionModelCopyWith<$Res>? get exception;
}

/// @nodoc
class __$$_ResultStateCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res>
    implements _$$_ResultStateCopyWith<T, $Res> {
  __$$_ResultStateCopyWithImpl(
      _$_ResultState<T> _value, $Res Function(_$_ResultState<T>) _then)
      : super(_value, (v) => _then(v as _$_ResultState<T>));

  @override
  _$_ResultState<T> get _value => super._value as _$_ResultState<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? exception = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ResultState<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionModel?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_ResultState<T> extends _ResultState<T> {
  const _$_ResultState(
      {required this.data, this.exception, required this.status})
      : super._();

  @override
  final T data;
  @override
  final ExceptionModel? exception;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'ResultState<$T>(data: $data, exception: $exception, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultState<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ResultStateCopyWith<T, _$_ResultState<T>> get copyWith =>
      __$$_ResultStateCopyWithImpl<T, _$_ResultState<T>>(this, _$identity);
}

abstract class _ResultState<T> extends ResultState<T> {
  const factory _ResultState(
      {required final T data,
      final ExceptionModel? exception,
      required final FormzStatus status}) = _$_ResultState<T>;
  const _ResultState._() : super._();

  @override
  T get data;
  @override
  ExceptionModel? get exception;
  @override
  FormzStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ResultStateCopyWith<T, _$_ResultState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
