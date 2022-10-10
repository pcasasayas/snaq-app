// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meals_getall_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealsGetAllState {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  List<MealModel> get meals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealsGetAllStateCopyWith<MealsGetAllState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsGetAllStateCopyWith<$Res> {
  factory $MealsGetAllStateCopyWith(
          MealsGetAllState value, $Res Function(MealsGetAllState) then) =
      _$MealsGetAllStateCopyWithImpl<$Res>;
  $Res call({int offset, int limit, List<MealModel> meals});
}

/// @nodoc
class _$MealsGetAllStateCopyWithImpl<$Res>
    implements $MealsGetAllStateCopyWith<$Res> {
  _$MealsGetAllStateCopyWithImpl(this._value, this._then);

  final MealsGetAllState _value;
  // ignore: unused_field
  final $Res Function(MealsGetAllState) _then;

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
abstract class _$$_MealsGetAllStateCopyWith<$Res>
    implements $MealsGetAllStateCopyWith<$Res> {
  factory _$$_MealsGetAllStateCopyWith(
          _$_MealsGetAllState value, $Res Function(_$_MealsGetAllState) then) =
      __$$_MealsGetAllStateCopyWithImpl<$Res>;
  @override
  $Res call({int offset, int limit, List<MealModel> meals});
}

/// @nodoc
class __$$_MealsGetAllStateCopyWithImpl<$Res>
    extends _$MealsGetAllStateCopyWithImpl<$Res>
    implements _$$_MealsGetAllStateCopyWith<$Res> {
  __$$_MealsGetAllStateCopyWithImpl(
      _$_MealsGetAllState _value, $Res Function(_$_MealsGetAllState) _then)
      : super(_value, (v) => _then(v as _$_MealsGetAllState));

  @override
  _$_MealsGetAllState get _value => super._value as _$_MealsGetAllState;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? meals = freezed,
  }) {
    return _then(_$_MealsGetAllState(
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

class _$_MealsGetAllState implements _MealsGetAllState {
  const _$_MealsGetAllState(
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
    return 'MealsGetAllState(offset: $offset, limit: $limit, meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealsGetAllState &&
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
  _$$_MealsGetAllStateCopyWith<_$_MealsGetAllState> get copyWith =>
      __$$_MealsGetAllStateCopyWithImpl<_$_MealsGetAllState>(this, _$identity);
}

abstract class _MealsGetAllState implements MealsGetAllState {
  const factory _MealsGetAllState(
      {final int offset,
      final int limit,
      final List<MealModel> meals}) = _$_MealsGetAllState;

  @override
  int get offset;
  @override
  int get limit;
  @override
  List<MealModel> get meals;
  @override
  @JsonKey(ignore: true)
  _$$_MealsGetAllStateCopyWith<_$_MealsGetAllState> get copyWith =>
      throw _privateConstructorUsedError;
}
