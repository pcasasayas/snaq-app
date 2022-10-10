// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meals_get_all_usecase_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealsGetAllUseCaseParams {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealsGetAllUseCaseParamsCopyWith<MealsGetAllUseCaseParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsGetAllUseCaseParamsCopyWith<$Res> {
  factory $MealsGetAllUseCaseParamsCopyWith(MealsGetAllUseCaseParams value,
          $Res Function(MealsGetAllUseCaseParams) then) =
      _$MealsGetAllUseCaseParamsCopyWithImpl<$Res>;
  $Res call({int offset, int limit});
}

/// @nodoc
class _$MealsGetAllUseCaseParamsCopyWithImpl<$Res>
    implements $MealsGetAllUseCaseParamsCopyWith<$Res> {
  _$MealsGetAllUseCaseParamsCopyWithImpl(this._value, this._then);

  final MealsGetAllUseCaseParams _value;
  // ignore: unused_field
  final $Res Function(MealsGetAllUseCaseParams) _then;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MealsGetAllUseCaseParamsCopyWith<$Res>
    implements $MealsGetAllUseCaseParamsCopyWith<$Res> {
  factory _$$_MealsGetAllUseCaseParamsCopyWith(
          _$_MealsGetAllUseCaseParams value,
          $Res Function(_$_MealsGetAllUseCaseParams) then) =
      __$$_MealsGetAllUseCaseParamsCopyWithImpl<$Res>;
  @override
  $Res call({int offset, int limit});
}

/// @nodoc
class __$$_MealsGetAllUseCaseParamsCopyWithImpl<$Res>
    extends _$MealsGetAllUseCaseParamsCopyWithImpl<$Res>
    implements _$$_MealsGetAllUseCaseParamsCopyWith<$Res> {
  __$$_MealsGetAllUseCaseParamsCopyWithImpl(_$_MealsGetAllUseCaseParams _value,
      $Res Function(_$_MealsGetAllUseCaseParams) _then)
      : super(_value, (v) => _then(v as _$_MealsGetAllUseCaseParams));

  @override
  _$_MealsGetAllUseCaseParams get _value =>
      super._value as _$_MealsGetAllUseCaseParams;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_MealsGetAllUseCaseParams(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MealsGetAllUseCaseParams implements _MealsGetAllUseCaseParams {
  const _$_MealsGetAllUseCaseParams(
      {required this.offset, required this.limit});

  @override
  final int offset;
  @override
  final int limit;

  @override
  String toString() {
    return 'MealsGetAllUseCaseParams(offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealsGetAllUseCaseParams &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$$_MealsGetAllUseCaseParamsCopyWith<_$_MealsGetAllUseCaseParams>
      get copyWith => __$$_MealsGetAllUseCaseParamsCopyWithImpl<
          _$_MealsGetAllUseCaseParams>(this, _$identity);
}

abstract class _MealsGetAllUseCaseParams implements MealsGetAllUseCaseParams {
  const factory _MealsGetAllUseCaseParams(
      {required final int offset,
      required final int limit}) = _$_MealsGetAllUseCaseParams;

  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_MealsGetAllUseCaseParamsCopyWith<_$_MealsGetAllUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}
