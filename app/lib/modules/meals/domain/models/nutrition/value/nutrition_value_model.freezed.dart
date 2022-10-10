// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nutrition_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NutritionValueModel {
  String get nameAbbreviation => throw _privateConstructorUsedError;
  String get unitAbbreviation => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  double get valueWithPrecision => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NutritionValueModelCopyWith<NutritionValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionValueModelCopyWith<$Res> {
  factory $NutritionValueModelCopyWith(
          NutritionValueModel value, $Res Function(NutritionValueModel) then) =
      _$NutritionValueModelCopyWithImpl<$Res>;
  $Res call(
      {String nameAbbreviation,
      String unitAbbreviation,
      int value,
      double valueWithPrecision});
}

/// @nodoc
class _$NutritionValueModelCopyWithImpl<$Res>
    implements $NutritionValueModelCopyWith<$Res> {
  _$NutritionValueModelCopyWithImpl(this._value, this._then);

  final NutritionValueModel _value;
  // ignore: unused_field
  final $Res Function(NutritionValueModel) _then;

  @override
  $Res call({
    Object? nameAbbreviation = freezed,
    Object? unitAbbreviation = freezed,
    Object? value = freezed,
    Object? valueWithPrecision = freezed,
  }) {
    return _then(_value.copyWith(
      nameAbbreviation: nameAbbreviation == freezed
          ? _value.nameAbbreviation
          : nameAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      unitAbbreviation: unitAbbreviation == freezed
          ? _value.unitAbbreviation
          : unitAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      valueWithPrecision: valueWithPrecision == freezed
          ? _value.valueWithPrecision
          : valueWithPrecision // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_NutritionValueModelCopyWith<$Res>
    implements $NutritionValueModelCopyWith<$Res> {
  factory _$$_NutritionValueModelCopyWith(_$_NutritionValueModel value,
          $Res Function(_$_NutritionValueModel) then) =
      __$$_NutritionValueModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nameAbbreviation,
      String unitAbbreviation,
      int value,
      double valueWithPrecision});
}

/// @nodoc
class __$$_NutritionValueModelCopyWithImpl<$Res>
    extends _$NutritionValueModelCopyWithImpl<$Res>
    implements _$$_NutritionValueModelCopyWith<$Res> {
  __$$_NutritionValueModelCopyWithImpl(_$_NutritionValueModel _value,
      $Res Function(_$_NutritionValueModel) _then)
      : super(_value, (v) => _then(v as _$_NutritionValueModel));

  @override
  _$_NutritionValueModel get _value => super._value as _$_NutritionValueModel;

  @override
  $Res call({
    Object? nameAbbreviation = freezed,
    Object? unitAbbreviation = freezed,
    Object? value = freezed,
    Object? valueWithPrecision = freezed,
  }) {
    return _then(_$_NutritionValueModel(
      nameAbbreviation: nameAbbreviation == freezed
          ? _value.nameAbbreviation
          : nameAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      unitAbbreviation: unitAbbreviation == freezed
          ? _value.unitAbbreviation
          : unitAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      valueWithPrecision: valueWithPrecision == freezed
          ? _value.valueWithPrecision
          : valueWithPrecision // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_NutritionValueModel implements _NutritionValueModel {
  const _$_NutritionValueModel(
      {required this.nameAbbreviation,
      required this.unitAbbreviation,
      required this.value,
      required this.valueWithPrecision});

  @override
  final String nameAbbreviation;
  @override
  final String unitAbbreviation;
  @override
  final int value;
  @override
  final double valueWithPrecision;

  @override
  String toString() {
    return 'NutritionValueModel(nameAbbreviation: $nameAbbreviation, unitAbbreviation: $unitAbbreviation, value: $value, valueWithPrecision: $valueWithPrecision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NutritionValueModel &&
            const DeepCollectionEquality()
                .equals(other.nameAbbreviation, nameAbbreviation) &&
            const DeepCollectionEquality()
                .equals(other.unitAbbreviation, unitAbbreviation) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.valueWithPrecision, valueWithPrecision));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nameAbbreviation),
      const DeepCollectionEquality().hash(unitAbbreviation),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(valueWithPrecision));

  @JsonKey(ignore: true)
  @override
  _$$_NutritionValueModelCopyWith<_$_NutritionValueModel> get copyWith =>
      __$$_NutritionValueModelCopyWithImpl<_$_NutritionValueModel>(
          this, _$identity);
}

abstract class _NutritionValueModel implements NutritionValueModel {
  const factory _NutritionValueModel(
      {required final String nameAbbreviation,
      required final String unitAbbreviation,
      required final int value,
      required final double valueWithPrecision}) = _$_NutritionValueModel;

  @override
  String get nameAbbreviation;
  @override
  String get unitAbbreviation;
  @override
  int get value;
  @override
  double get valueWithPrecision;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionValueModelCopyWith<_$_NutritionValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}
