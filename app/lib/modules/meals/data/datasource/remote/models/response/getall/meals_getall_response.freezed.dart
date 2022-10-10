// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meals_getall_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealsGetAllResponse _$MealsGetAllResponseFromJson(Map<String, dynamic> json) {
  return _MealsGetAllResponse.fromJson(json);
}

/// @nodoc
mixin _$MealsGetAllResponse {
  List<MealDTO> get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealsGetAllResponseCopyWith<MealsGetAllResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsGetAllResponseCopyWith<$Res> {
  factory $MealsGetAllResponseCopyWith(
          MealsGetAllResponse value, $Res Function(MealsGetAllResponse) then) =
      _$MealsGetAllResponseCopyWithImpl<$Res>;
  $Res call({List<MealDTO> meals});
}

/// @nodoc
class _$MealsGetAllResponseCopyWithImpl<$Res>
    implements $MealsGetAllResponseCopyWith<$Res> {
  _$MealsGetAllResponseCopyWithImpl(this._value, this._then);

  final MealsGetAllResponse _value;
  // ignore: unused_field
  final $Res Function(MealsGetAllResponse) _then;

  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_value.copyWith(
      meals: meals == freezed
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealDTO>,
    ));
  }
}

/// @nodoc
abstract class _$$_MealsGetAllResponseCopyWith<$Res>
    implements $MealsGetAllResponseCopyWith<$Res> {
  factory _$$_MealsGetAllResponseCopyWith(_$_MealsGetAllResponse value,
          $Res Function(_$_MealsGetAllResponse) then) =
      __$$_MealsGetAllResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<MealDTO> meals});
}

/// @nodoc
class __$$_MealsGetAllResponseCopyWithImpl<$Res>
    extends _$MealsGetAllResponseCopyWithImpl<$Res>
    implements _$$_MealsGetAllResponseCopyWith<$Res> {
  __$$_MealsGetAllResponseCopyWithImpl(_$_MealsGetAllResponse _value,
      $Res Function(_$_MealsGetAllResponse) _then)
      : super(_value, (v) => _then(v as _$_MealsGetAllResponse));

  @override
  _$_MealsGetAllResponse get _value => super._value as _$_MealsGetAllResponse;

  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_$_MealsGetAllResponse(
      meals: meals == freezed
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealsGetAllResponse implements _MealsGetAllResponse {
  const _$_MealsGetAllResponse({required final List<MealDTO> meals})
      : _meals = meals;

  factory _$_MealsGetAllResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MealsGetAllResponseFromJson(json);

  final List<MealDTO> _meals;
  @override
  List<MealDTO> get meals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'MealsGetAllResponse(meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealsGetAllResponse &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  _$$_MealsGetAllResponseCopyWith<_$_MealsGetAllResponse> get copyWith =>
      __$$_MealsGetAllResponseCopyWithImpl<_$_MealsGetAllResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealsGetAllResponseToJson(
      this,
    );
  }
}

abstract class _MealsGetAllResponse implements MealsGetAllResponse {
  const factory _MealsGetAllResponse({required final List<MealDTO> meals}) =
      _$_MealsGetAllResponse;

  factory _MealsGetAllResponse.fromJson(Map<String, dynamic> json) =
      _$_MealsGetAllResponse.fromJson;

  @override
  List<MealDTO> get meals;
  @override
  @JsonKey(ignore: true)
  _$$_MealsGetAllResponseCopyWith<_$_MealsGetAllResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
