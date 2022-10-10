// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientModel {
  String get name => throw _privateConstructorUsedError;
  NutritionModel get nutrition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientModelCopyWith<IngredientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientModelCopyWith<$Res> {
  factory $IngredientModelCopyWith(
          IngredientModel value, $Res Function(IngredientModel) then) =
      _$IngredientModelCopyWithImpl<$Res>;
  $Res call({String name, NutritionModel nutrition});

  $NutritionModelCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$IngredientModelCopyWithImpl<$Res>
    implements $IngredientModelCopyWith<$Res> {
  _$IngredientModelCopyWithImpl(this._value, this._then);

  final IngredientModel _value;
  // ignore: unused_field
  final $Res Function(IngredientModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? nutrition = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionModel,
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
abstract class _$$_IngredientModelCopyWith<$Res>
    implements $IngredientModelCopyWith<$Res> {
  factory _$$_IngredientModelCopyWith(
          _$_IngredientModel value, $Res Function(_$_IngredientModel) then) =
      __$$_IngredientModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, NutritionModel nutrition});

  @override
  $NutritionModelCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$_IngredientModelCopyWithImpl<$Res>
    extends _$IngredientModelCopyWithImpl<$Res>
    implements _$$_IngredientModelCopyWith<$Res> {
  __$$_IngredientModelCopyWithImpl(
      _$_IngredientModel _value, $Res Function(_$_IngredientModel) _then)
      : super(_value, (v) => _then(v as _$_IngredientModel));

  @override
  _$_IngredientModel get _value => super._value as _$_IngredientModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? nutrition = freezed,
  }) {
    return _then(_$_IngredientModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionModel,
    ));
  }
}

/// @nodoc

class _$_IngredientModel extends _IngredientModel {
  const _$_IngredientModel({required this.name, required this.nutrition})
      : super._();

  @override
  final String name;
  @override
  final NutritionModel nutrition;

  @override
  String toString() {
    return 'IngredientModel(name: $name, nutrition: $nutrition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nutrition, nutrition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nutrition));

  @JsonKey(ignore: true)
  @override
  _$$_IngredientModelCopyWith<_$_IngredientModel> get copyWith =>
      __$$_IngredientModelCopyWithImpl<_$_IngredientModel>(this, _$identity);
}

abstract class _IngredientModel extends IngredientModel {
  const factory _IngredientModel(
      {required final String name,
      required final NutritionModel nutrition}) = _$_IngredientModel;
  const _IngredientModel._() : super._();

  @override
  String get name;
  @override
  NutritionModel get nutrition;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientModelCopyWith<_$_IngredientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
