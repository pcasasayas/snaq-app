// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meals_set_status_usecase_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealsSetStatusUseCaseParams {
  int get id => throw _privateConstructorUsedError;
  MealStatusModel get newStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealsSetStatusUseCaseParamsCopyWith<MealsSetStatusUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsSetStatusUseCaseParamsCopyWith<$Res> {
  factory $MealsSetStatusUseCaseParamsCopyWith(
          MealsSetStatusUseCaseParams value,
          $Res Function(MealsSetStatusUseCaseParams) then) =
      _$MealsSetStatusUseCaseParamsCopyWithImpl<$Res>;
  $Res call({int id, MealStatusModel newStatus});
}

/// @nodoc
class _$MealsSetStatusUseCaseParamsCopyWithImpl<$Res>
    implements $MealsSetStatusUseCaseParamsCopyWith<$Res> {
  _$MealsSetStatusUseCaseParamsCopyWithImpl(this._value, this._then);

  final MealsSetStatusUseCaseParams _value;
  // ignore: unused_field
  final $Res Function(MealsSetStatusUseCaseParams) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? newStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      newStatus: newStatus == freezed
          ? _value.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as MealStatusModel,
    ));
  }
}

/// @nodoc
abstract class _$$_MealsGetUseCaseParamsCopyWith<$Res>
    implements $MealsSetStatusUseCaseParamsCopyWith<$Res> {
  factory _$$_MealsGetUseCaseParamsCopyWith(_$_MealsGetUseCaseParams value,
          $Res Function(_$_MealsGetUseCaseParams) then) =
      __$$_MealsGetUseCaseParamsCopyWithImpl<$Res>;
  @override
  $Res call({int id, MealStatusModel newStatus});
}

/// @nodoc
class __$$_MealsGetUseCaseParamsCopyWithImpl<$Res>
    extends _$MealsSetStatusUseCaseParamsCopyWithImpl<$Res>
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
    Object? newStatus = freezed,
  }) {
    return _then(_$_MealsGetUseCaseParams(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      newStatus: newStatus == freezed
          ? _value.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as MealStatusModel,
    ));
  }
}

/// @nodoc

class _$_MealsGetUseCaseParams implements _MealsGetUseCaseParams {
  const _$_MealsGetUseCaseParams({required this.id, required this.newStatus});

  @override
  final int id;
  @override
  final MealStatusModel newStatus;

  @override
  String toString() {
    return 'MealsSetStatusUseCaseParams(id: $id, newStatus: $newStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealsGetUseCaseParams &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.newStatus, newStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(newStatus));

  @JsonKey(ignore: true)
  @override
  _$$_MealsGetUseCaseParamsCopyWith<_$_MealsGetUseCaseParams> get copyWith =>
      __$$_MealsGetUseCaseParamsCopyWithImpl<_$_MealsGetUseCaseParams>(
          this, _$identity);
}

abstract class _MealsGetUseCaseParams implements MealsSetStatusUseCaseParams {
  const factory _MealsGetUseCaseParams(
      {required final int id,
      required final MealStatusModel newStatus}) = _$_MealsGetUseCaseParams;

  @override
  int get id;
  @override
  MealStatusModel get newStatus;
  @override
  @JsonKey(ignore: true)
  _$$_MealsGetUseCaseParamsCopyWith<_$_MealsGetUseCaseParams> get copyWith =>
      throw _privateConstructorUsedError;
}
