// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_getdetail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealGetDetailState {
  MealModel get meal => throw _privateConstructorUsedError;
  MealDetailModel? get mealDetail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealGetDetailStateCopyWith<MealGetDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealGetDetailStateCopyWith<$Res> {
  factory $MealGetDetailStateCopyWith(
          MealGetDetailState value, $Res Function(MealGetDetailState) then) =
      _$MealGetDetailStateCopyWithImpl<$Res>;
  $Res call({MealModel meal, MealDetailModel? mealDetail});

  $MealModelCopyWith<$Res> get meal;
  $MealDetailModelCopyWith<$Res>? get mealDetail;
}

/// @nodoc
class _$MealGetDetailStateCopyWithImpl<$Res>
    implements $MealGetDetailStateCopyWith<$Res> {
  _$MealGetDetailStateCopyWithImpl(this._value, this._then);

  final MealGetDetailState _value;
  // ignore: unused_field
  final $Res Function(MealGetDetailState) _then;

  @override
  $Res call({
    Object? meal = freezed,
    Object? mealDetail = freezed,
  }) {
    return _then(_value.copyWith(
      meal: meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as MealModel,
      mealDetail: mealDetail == freezed
          ? _value.mealDetail
          : mealDetail // ignore: cast_nullable_to_non_nullable
              as MealDetailModel?,
    ));
  }

  @override
  $MealModelCopyWith<$Res> get meal {
    return $MealModelCopyWith<$Res>(_value.meal, (value) {
      return _then(_value.copyWith(meal: value));
    });
  }

  @override
  $MealDetailModelCopyWith<$Res>? get mealDetail {
    if (_value.mealDetail == null) {
      return null;
    }

    return $MealDetailModelCopyWith<$Res>(_value.mealDetail!, (value) {
      return _then(_value.copyWith(mealDetail: value));
    });
  }
}

/// @nodoc
abstract class _$$_MealGetDetailStateCopyWith<$Res>
    implements $MealGetDetailStateCopyWith<$Res> {
  factory _$$_MealGetDetailStateCopyWith(_$_MealGetDetailState value,
          $Res Function(_$_MealGetDetailState) then) =
      __$$_MealGetDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({MealModel meal, MealDetailModel? mealDetail});

  @override
  $MealModelCopyWith<$Res> get meal;
  @override
  $MealDetailModelCopyWith<$Res>? get mealDetail;
}

/// @nodoc
class __$$_MealGetDetailStateCopyWithImpl<$Res>
    extends _$MealGetDetailStateCopyWithImpl<$Res>
    implements _$$_MealGetDetailStateCopyWith<$Res> {
  __$$_MealGetDetailStateCopyWithImpl(
      _$_MealGetDetailState _value, $Res Function(_$_MealGetDetailState) _then)
      : super(_value, (v) => _then(v as _$_MealGetDetailState));

  @override
  _$_MealGetDetailState get _value => super._value as _$_MealGetDetailState;

  @override
  $Res call({
    Object? meal = freezed,
    Object? mealDetail = freezed,
  }) {
    return _then(_$_MealGetDetailState(
      meal: meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as MealModel,
      mealDetail: mealDetail == freezed
          ? _value.mealDetail
          : mealDetail // ignore: cast_nullable_to_non_nullable
              as MealDetailModel?,
    ));
  }
}

/// @nodoc

class _$_MealGetDetailState implements _MealGetDetailState {
  const _$_MealGetDetailState({required this.meal, this.mealDetail});

  @override
  final MealModel meal;
  @override
  final MealDetailModel? mealDetail;

  @override
  String toString() {
    return 'MealGetDetailState(meal: $meal, mealDetail: $mealDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealGetDetailState &&
            const DeepCollectionEquality().equals(other.meal, meal) &&
            const DeepCollectionEquality()
                .equals(other.mealDetail, mealDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meal),
      const DeepCollectionEquality().hash(mealDetail));

  @JsonKey(ignore: true)
  @override
  _$$_MealGetDetailStateCopyWith<_$_MealGetDetailState> get copyWith =>
      __$$_MealGetDetailStateCopyWithImpl<_$_MealGetDetailState>(
          this, _$identity);
}

abstract class _MealGetDetailState implements MealGetDetailState {
  const factory _MealGetDetailState(
      {required final MealModel meal,
      final MealDetailModel? mealDetail}) = _$_MealGetDetailState;

  @override
  MealModel get meal;
  @override
  MealDetailModel? get mealDetail;
  @override
  @JsonKey(ignore: true)
  _$$_MealGetDetailStateCopyWith<_$_MealGetDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
