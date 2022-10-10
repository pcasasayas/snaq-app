// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meals_get_rand_usecase_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealsGetRandUseCaseParams {
  List<int> get exclude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealsGetRandUseCaseParamsCopyWith<MealsGetRandUseCaseParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsGetRandUseCaseParamsCopyWith<$Res> {
  factory $MealsGetRandUseCaseParamsCopyWith(MealsGetRandUseCaseParams value,
          $Res Function(MealsGetRandUseCaseParams) then) =
      _$MealsGetRandUseCaseParamsCopyWithImpl<$Res>;
  $Res call({List<int> exclude});
}

/// @nodoc
class _$MealsGetRandUseCaseParamsCopyWithImpl<$Res>
    implements $MealsGetRandUseCaseParamsCopyWith<$Res> {
  _$MealsGetRandUseCaseParamsCopyWithImpl(this._value, this._then);

  final MealsGetRandUseCaseParams _value;
  // ignore: unused_field
  final $Res Function(MealsGetRandUseCaseParams) _then;

  @override
  $Res call({
    Object? exclude = freezed,
  }) {
    return _then(_value.copyWith(
      exclude: exclude == freezed
          ? _value.exclude
          : exclude // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_MealsGetRandUseCaseParamsCopyWith<$Res>
    implements $MealsGetRandUseCaseParamsCopyWith<$Res> {
  factory _$$_MealsGetRandUseCaseParamsCopyWith(
          _$_MealsGetRandUseCaseParams value,
          $Res Function(_$_MealsGetRandUseCaseParams) then) =
      __$$_MealsGetRandUseCaseParamsCopyWithImpl<$Res>;
  @override
  $Res call({List<int> exclude});
}

/// @nodoc
class __$$_MealsGetRandUseCaseParamsCopyWithImpl<$Res>
    extends _$MealsGetRandUseCaseParamsCopyWithImpl<$Res>
    implements _$$_MealsGetRandUseCaseParamsCopyWith<$Res> {
  __$$_MealsGetRandUseCaseParamsCopyWithImpl(
      _$_MealsGetRandUseCaseParams _value,
      $Res Function(_$_MealsGetRandUseCaseParams) _then)
      : super(_value, (v) => _then(v as _$_MealsGetRandUseCaseParams));

  @override
  _$_MealsGetRandUseCaseParams get _value =>
      super._value as _$_MealsGetRandUseCaseParams;

  @override
  $Res call({
    Object? exclude = freezed,
  }) {
    return _then(_$_MealsGetRandUseCaseParams(
      exclude: exclude == freezed
          ? _value._exclude
          : exclude // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_MealsGetRandUseCaseParams implements _MealsGetRandUseCaseParams {
  const _$_MealsGetRandUseCaseParams({required final List<int> exclude})
      : _exclude = exclude;

  final List<int> _exclude;
  @override
  List<int> get exclude {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exclude);
  }

  @override
  String toString() {
    return 'MealsGetRandUseCaseParams(exclude: $exclude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealsGetRandUseCaseParams &&
            const DeepCollectionEquality().equals(other._exclude, _exclude));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_exclude));

  @JsonKey(ignore: true)
  @override
  _$$_MealsGetRandUseCaseParamsCopyWith<_$_MealsGetRandUseCaseParams>
      get copyWith => __$$_MealsGetRandUseCaseParamsCopyWithImpl<
          _$_MealsGetRandUseCaseParams>(this, _$identity);
}

abstract class _MealsGetRandUseCaseParams implements MealsGetRandUseCaseParams {
  const factory _MealsGetRandUseCaseParams({required final List<int> exclude}) =
      _$_MealsGetRandUseCaseParams;

  @override
  List<int> get exclude;
  @override
  @JsonKey(ignore: true)
  _$$_MealsGetRandUseCaseParamsCopyWith<_$_MealsGetRandUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}
