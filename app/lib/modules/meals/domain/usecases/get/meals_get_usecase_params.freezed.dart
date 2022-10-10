// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meals_get_usecase_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealsGetUseCaseParams {
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealsGetUseCaseParamsCopyWith<MealsGetUseCaseParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsGetUseCaseParamsCopyWith<$Res> {
  factory $MealsGetUseCaseParamsCopyWith(MealsGetUseCaseParams value,
          $Res Function(MealsGetUseCaseParams) then) =
      _$MealsGetUseCaseParamsCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$MealsGetUseCaseParamsCopyWithImpl<$Res>
    implements $MealsGetUseCaseParamsCopyWith<$Res> {
  _$MealsGetUseCaseParamsCopyWithImpl(this._value, this._then);

  final MealsGetUseCaseParams _value;
  // ignore: unused_field
  final $Res Function(MealsGetUseCaseParams) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MealsGetUseCaseParamsCopyWith<$Res>
    implements $MealsGetUseCaseParamsCopyWith<$Res> {
  factory _$$_MealsGetUseCaseParamsCopyWith(_$_MealsGetUseCaseParams value,
          $Res Function(_$_MealsGetUseCaseParams) then) =
      __$$_MealsGetUseCaseParamsCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$$_MealsGetUseCaseParamsCopyWithImpl<$Res>
    extends _$MealsGetUseCaseParamsCopyWithImpl<$Res>
    implements _$$_MealsGetUseCaseParamsCopyWith<$Res> {
  __$$_MealsGetUseCaseParamsCopyWithImpl(_$_MealsGetUseCaseParams _value,
      $Res Function(_$_MealsGetUseCaseParams) _then)
      : super(_value, (v) => _then(v as _$_MealsGetUseCaseParams));

  @override
  _$_MealsGetUseCaseParams get _value =>
      super._value as _$_MealsGetUseCaseParams;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_MealsGetUseCaseParams(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MealsGetUseCaseParams implements _MealsGetUseCaseParams {
  const _$_MealsGetUseCaseParams({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'MealsGetUseCaseParams(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealsGetUseCaseParams &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_MealsGetUseCaseParamsCopyWith<_$_MealsGetUseCaseParams> get copyWith =>
      __$$_MealsGetUseCaseParamsCopyWithImpl<_$_MealsGetUseCaseParams>(
          this, _$identity);
}

abstract class _MealsGetUseCaseParams implements MealsGetUseCaseParams {
  const factory _MealsGetUseCaseParams({required final int id}) =
      _$_MealsGetUseCaseParams;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_MealsGetUseCaseParamsCopyWith<_$_MealsGetUseCaseParams> get copyWith =>
      throw _privateConstructorUsedError;
}
