// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meals_getnotdone_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealsGetNotDoneState {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  List<MealModel> get meals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealsGetNotDoneStateCopyWith<MealsGetNotDoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsGetNotDoneStateCopyWith<$Res> {
  factory $MealsGetNotDoneStateCopyWith(MealsGetNotDoneState value,
          $Res Function(MealsGetNotDoneState) then) =
      _$MealsGetNotDoneStateCopyWithImpl<$Res>;
  $Res call({int offset, int limit, List<MealModel> meals});
}

/// @nodoc
class _$MealsGetNotDoneStateCopyWithImpl<$Res>
    implements $MealsGetNotDoneStateCopyWith<$Res> {
  _$MealsGetNotDoneStateCopyWithImpl(this._value, this._then);

  final MealsGetNotDoneState _value;
  // ignore: unused_field
  final $Res Function(MealsGetNotDoneState) _then;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? meals = freezed,
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
      meals: meals == freezed
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_MealsGetNotDoneStateCopyWith<$Res>
    implements $MealsGetNotDoneStateCopyWith<$Res> {
  factory _$$_MealsGetNotDoneStateCopyWith(_$_MealsGetNotDoneState value,
          $Res Function(_$_MealsGetNotDoneState) then) =
      __$$_MealsGetNotDoneStateCopyWithImpl<$Res>;
  @override
  $Res call({int offset, int limit, List<MealModel> meals});
}

/// @nodoc
class __$$_MealsGetNotDoneStateCopyWithImpl<$Res>
    extends _$MealsGetNotDoneStateCopyWithImpl<$Res>
    implements _$$_MealsGetNotDoneStateCopyWith<$Res> {
  __$$_MealsGetNotDoneStateCopyWithImpl(_$_MealsGetNotDoneState _value,
      $Res Function(_$_MealsGetNotDoneState) _then)
      : super(_value, (v) => _then(v as _$_MealsGetNotDoneState));

  @override
  _$_MealsGetNotDoneState get _value => super._value as _$_MealsGetNotDoneState;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? meals = freezed,
  }) {
    return _then(_$_MealsGetNotDoneState(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      meals: meals == freezed
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
    ));
  }
}

/// @nodoc

class _$_MealsGetNotDoneState implements _MealsGetNotDoneState {
  const _$_MealsGetNotDoneState(
      {this.offset = 0,
      this.limit = 10,
      final List<MealModel> meals = const []})
      : _meals = meals;

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int limit;
  final List<MealModel> _meals;
  @override
  @JsonKey()
  List<MealModel> get meals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'MealsGetNotDoneState(offset: $offset, limit: $limit, meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealsGetNotDoneState &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  _$$_MealsGetNotDoneStateCopyWith<_$_MealsGetNotDoneState> get copyWith =>
      __$$_MealsGetNotDoneStateCopyWithImpl<_$_MealsGetNotDoneState>(
          this, _$identity);
}

abstract class _MealsGetNotDoneState implements MealsGetNotDoneState {
  const factory _MealsGetNotDoneState(
      {final int offset,
      final int limit,
      final List<MealModel> meals}) = _$_MealsGetNotDoneState;

  @override
  int get offset;
  @override
  int get limit;
  @override
  List<MealModel> get meals;
  @override
  @JsonKey(ignore: true)
  _$$_MealsGetNotDoneStateCopyWith<_$_MealsGetNotDoneState> get copyWith =>
      throw _privateConstructorUsedError;
}
