// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nutrition_value_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutritionValueDTO _$NutritionValueDTOFromJson(Map<String, dynamic> json) {
  return _NutritionValueDTO.fromJson(json);
}

/// @nodoc
mixin _$NutritionValueDTO {
  String get name => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  double get valueWithPrecision => throw _privateConstructorUsedError;
  NutritionAbbreviationDTO get abbreviation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionValueDTOCopyWith<NutritionValueDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionValueDTOCopyWith<$Res> {
  factory $NutritionValueDTOCopyWith(
          NutritionValueDTO value, $Res Function(NutritionValueDTO) then) =
      _$NutritionValueDTOCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String unit,
      int value,
      double valueWithPrecision,
      NutritionAbbreviationDTO abbreviation});

  $NutritionAbbreviationDTOCopyWith<$Res> get abbreviation;
}

/// @nodoc
class _$NutritionValueDTOCopyWithImpl<$Res>
    implements $NutritionValueDTOCopyWith<$Res> {
  _$NutritionValueDTOCopyWithImpl(this._value, this._then);

  final NutritionValueDTO _value;
  // ignore: unused_field
  final $Res Function(NutritionValueDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? unit = freezed,
    Object? value = freezed,
    Object? valueWithPrecision = freezed,
    Object? abbreviation = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      valueWithPrecision: valueWithPrecision == freezed
          ? _value.valueWithPrecision
          : valueWithPrecision // ignore: cast_nullable_to_non_nullable
              as double,
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as NutritionAbbreviationDTO,
    ));
  }

  @override
  $NutritionAbbreviationDTOCopyWith<$Res> get abbreviation {
    return $NutritionAbbreviationDTOCopyWith<$Res>(_value.abbreviation,
        (value) {
      return _then(_value.copyWith(abbreviation: value));
    });
  }
}

/// @nodoc
abstract class _$$_NutritionValueDTOCopyWith<$Res>
    implements $NutritionValueDTOCopyWith<$Res> {
  factory _$$_NutritionValueDTOCopyWith(_$_NutritionValueDTO value,
          $Res Function(_$_NutritionValueDTO) then) =
      __$$_NutritionValueDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String unit,
      int value,
      double valueWithPrecision,
      NutritionAbbreviationDTO abbreviation});

  @override
  $NutritionAbbreviationDTOCopyWith<$Res> get abbreviation;
}

/// @nodoc
class __$$_NutritionValueDTOCopyWithImpl<$Res>
    extends _$NutritionValueDTOCopyWithImpl<$Res>
    implements _$$_NutritionValueDTOCopyWith<$Res> {
  __$$_NutritionValueDTOCopyWithImpl(
      _$_NutritionValueDTO _value, $Res Function(_$_NutritionValueDTO) _then)
      : super(_value, (v) => _then(v as _$_NutritionValueDTO));

  @override
  _$_NutritionValueDTO get _value => super._value as _$_NutritionValueDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? unit = freezed,
    Object? value = freezed,
    Object? valueWithPrecision = freezed,
    Object? abbreviation = freezed,
  }) {
    return _then(_$_NutritionValueDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      valueWithPrecision: valueWithPrecision == freezed
          ? _value.valueWithPrecision
          : valueWithPrecision // ignore: cast_nullable_to_non_nullable
              as double,
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as NutritionAbbreviationDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutritionValueDTO implements _NutritionValueDTO {
  const _$_NutritionValueDTO(
      {required this.name,
      required this.unit,
      required this.value,
      required this.valueWithPrecision,
      required this.abbreviation});

  factory _$_NutritionValueDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NutritionValueDTOFromJson(json);

  @override
  final String name;
  @override
  final String unit;
  @override
  final int value;
  @override
  final double valueWithPrecision;
  @override
  final NutritionAbbreviationDTO abbreviation;

  @override
  String toString() {
    return 'NutritionValueDTO(name: $name, unit: $unit, value: $value, valueWithPrecision: $valueWithPrecision, abbreviation: $abbreviation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NutritionValueDTO &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.valueWithPrecision, valueWithPrecision) &&
            const DeepCollectionEquality()
                .equals(other.abbreviation, abbreviation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(valueWithPrecision),
      const DeepCollectionEquality().hash(abbreviation));

  @JsonKey(ignore: true)
  @override
  _$$_NutritionValueDTOCopyWith<_$_NutritionValueDTO> get copyWith =>
      __$$_NutritionValueDTOCopyWithImpl<_$_NutritionValueDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutritionValueDTOToJson(
      this,
    );
  }
}

abstract class _NutritionValueDTO implements NutritionValueDTO {
  const factory _NutritionValueDTO(
          {required final String name,
          required final String unit,
          required final int value,
          required final double valueWithPrecision,
          required final NutritionAbbreviationDTO abbreviation}) =
      _$_NutritionValueDTO;

  factory _NutritionValueDTO.fromJson(Map<String, dynamic> json) =
      _$_NutritionValueDTO.fromJson;

  @override
  String get name;
  @override
  String get unit;
  @override
  int get value;
  @override
  double get valueWithPrecision;
  @override
  NutritionAbbreviationDTO get abbreviation;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionValueDTOCopyWith<_$_NutritionValueDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
