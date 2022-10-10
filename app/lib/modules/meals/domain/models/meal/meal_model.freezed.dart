// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealModel {
  int get id => throw _privateConstructorUsedError;
  String get externalId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  MealStatusModel get status => throw _privateConstructorUsedError;
  NutritionModel get nutrition => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealModelCopyWith<MealModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealModelCopyWith<$Res> {
  factory $MealModelCopyWith(MealModel value, $Res Function(MealModel) then) =
      _$MealModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String externalId,
      String? image,
      MealStatusModel status,
      NutritionModel nutrition,
      List<String> ingredients});

  $NutritionModelCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$MealModelCopyWithImpl<$Res> implements $MealModelCopyWith<$Res> {
  _$MealModelCopyWithImpl(this._value, this._then);

  final MealModel _value;
  // ignore: unused_field
  final $Res Function(MealModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? externalId = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? nutrition = freezed,
    Object? ingredients = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      externalId: externalId == freezed
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MealStatusModel,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionModel,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $NutritionModelCopyWith<$Res> get nutrition {
    return $NutritionModelCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value));
    });
  }
}

/// @nodoc
abstract class _$$_MealModelCopyWith<$Res> implements $MealModelCopyWith<$Res> {
  factory _$$_MealModelCopyWith(
          _$_MealModel value, $Res Function(_$_MealModel) then) =
      __$$_MealModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String externalId,
      String? image,
      MealStatusModel status,
      NutritionModel nutrition,
      List<String> ingredients});

  @override
  $NutritionModelCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$_MealModelCopyWithImpl<$Res> extends _$MealModelCopyWithImpl<$Res>
    implements _$$_MealModelCopyWith<$Res> {
  __$$_MealModelCopyWithImpl(
      _$_MealModel _value, $Res Function(_$_MealModel) _then)
      : super(_value, (v) => _then(v as _$_MealModel));

  @override
  _$_MealModel get _value => super._value as _$_MealModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? externalId = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? nutrition = freezed,
    Object? ingredients = freezed,
  }) {
    return _then(_$_MealModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      externalId: externalId == freezed
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MealStatusModel,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionModel,
      ingredients: ingredients == freezed
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_MealModel extends _MealModel {
  const _$_MealModel(
      {required this.id,
      required this.externalId,
      this.image,
      required this.status,
      required this.nutrition,
      required final List<String> ingredients})
      : _ingredients = ingredients,
        super._();

  @override
  final int id;
  @override
  final String externalId;
  @override
  final String? image;
  @override
  final MealStatusModel status;
  @override
  final NutritionModel nutrition;
  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'MealModel(id: $id, externalId: $externalId, image: $image, status: $status, nutrition: $nutrition, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.externalId, externalId) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.nutrition, nutrition) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(externalId),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(nutrition),
      const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  _$$_MealModelCopyWith<_$_MealModel> get copyWith =>
      __$$_MealModelCopyWithImpl<_$_MealModel>(this, _$identity);
}

abstract class _MealModel extends MealModel {
  const factory _MealModel(
      {required final int id,
      required final String externalId,
      final String? image,
      required final MealStatusModel status,
      required final NutritionModel nutrition,
      required final List<String> ingredients}) = _$_MealModel;
  const _MealModel._() : super._();

  @override
  int get id;
  @override
  String get externalId;
  @override
  String? get image;
  @override
  MealStatusModel get status;
  @override
  NutritionModel get nutrition;
  @override
  List<String> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_MealModelCopyWith<_$_MealModel> get copyWith =>
      throw _privateConstructorUsedError;
}
