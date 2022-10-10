// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mealcomponent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealComponentModel {
  IngredientModel? get mainIngredient => throw _privateConstructorUsedError;
  List<IngredientModel> get supplementaryIngredients =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealComponentModelCopyWith<MealComponentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealComponentModelCopyWith<$Res> {
  factory $MealComponentModelCopyWith(
          MealComponentModel value, $Res Function(MealComponentModel) then) =
      _$MealComponentModelCopyWithImpl<$Res>;
  $Res call(
      {IngredientModel? mainIngredient,
      List<IngredientModel> supplementaryIngredients});

  $IngredientModelCopyWith<$Res>? get mainIngredient;
}

/// @nodoc
class _$MealComponentModelCopyWithImpl<$Res>
    implements $MealComponentModelCopyWith<$Res> {
  _$MealComponentModelCopyWithImpl(this._value, this._then);

  final MealComponentModel _value;
  // ignore: unused_field
  final $Res Function(MealComponentModel) _then;

  @override
  $Res call({
    Object? mainIngredient = freezed,
    Object? supplementaryIngredients = freezed,
  }) {
    return _then(_value.copyWith(
      mainIngredient: mainIngredient == freezed
          ? _value.mainIngredient
          : mainIngredient // ignore: cast_nullable_to_non_nullable
              as IngredientModel?,
      supplementaryIngredients: supplementaryIngredients == freezed
          ? _value.supplementaryIngredients
          : supplementaryIngredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
    ));
  }

  @override
  $IngredientModelCopyWith<$Res>? get mainIngredient {
    if (_value.mainIngredient == null) {
      return null;
    }

    return $IngredientModelCopyWith<$Res>(_value.mainIngredient!, (value) {
      return _then(_value.copyWith(mainIngredient: value));
    });
  }
}

/// @nodoc
abstract class _$$_MealComponentModelCopyWith<$Res>
    implements $MealComponentModelCopyWith<$Res> {
  factory _$$_MealComponentModelCopyWith(_$_MealComponentModel value,
          $Res Function(_$_MealComponentModel) then) =
      __$$_MealComponentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {IngredientModel? mainIngredient,
      List<IngredientModel> supplementaryIngredients});

  @override
  $IngredientModelCopyWith<$Res>? get mainIngredient;
}

/// @nodoc
class __$$_MealComponentModelCopyWithImpl<$Res>
    extends _$MealComponentModelCopyWithImpl<$Res>
    implements _$$_MealComponentModelCopyWith<$Res> {
  __$$_MealComponentModelCopyWithImpl(
      _$_MealComponentModel _value, $Res Function(_$_MealComponentModel) _then)
      : super(_value, (v) => _then(v as _$_MealComponentModel));

  @override
  _$_MealComponentModel get _value => super._value as _$_MealComponentModel;

  @override
  $Res call({
    Object? mainIngredient = freezed,
    Object? supplementaryIngredients = freezed,
  }) {
    return _then(_$_MealComponentModel(
      mainIngredient: mainIngredient == freezed
          ? _value.mainIngredient
          : mainIngredient // ignore: cast_nullable_to_non_nullable
              as IngredientModel?,
      supplementaryIngredients: supplementaryIngredients == freezed
          ? _value._supplementaryIngredients
          : supplementaryIngredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
    ));
  }
}

/// @nodoc

class _$_MealComponentModel extends _MealComponentModel {
  const _$_MealComponentModel(
      {required this.mainIngredient,
      required final List<IngredientModel> supplementaryIngredients})
      : _supplementaryIngredients = supplementaryIngredients,
        super._();

  @override
  final IngredientModel? mainIngredient;
  final List<IngredientModel> _supplementaryIngredients;
  @override
  List<IngredientModel> get supplementaryIngredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supplementaryIngredients);
  }

  @override
  String toString() {
    return 'MealComponentModel(mainIngredient: $mainIngredient, supplementaryIngredients: $supplementaryIngredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealComponentModel &&
            const DeepCollectionEquality()
                .equals(other.mainIngredient, mainIngredient) &&
            const DeepCollectionEquality().equals(
                other._supplementaryIngredients, _supplementaryIngredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mainIngredient),
      const DeepCollectionEquality().hash(_supplementaryIngredients));

  @JsonKey(ignore: true)
  @override
  _$$_MealComponentModelCopyWith<_$_MealComponentModel> get copyWith =>
      __$$_MealComponentModelCopyWithImpl<_$_MealComponentModel>(
          this, _$identity);
}

abstract class _MealComponentModel extends MealComponentModel {
  const factory _MealComponentModel(
          {required final IngredientModel? mainIngredient,
          required final List<IngredientModel> supplementaryIngredients}) =
      _$_MealComponentModel;
  const _MealComponentModel._() : super._();

  @override
  IngredientModel? get mainIngredient;
  @override
  List<IngredientModel> get supplementaryIngredients;
  @override
  @JsonKey(ignore: true)
  _$$_MealComponentModelCopyWith<_$_MealComponentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
