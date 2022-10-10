// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nutrition_abbreviation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutritionAbbreviationDTO _$NutritionAbbreviationDTOFromJson(
    Map<String, dynamic> json) {
  return _NutritionAbbreviationDTO.fromJson(json);
}

/// @nodoc
mixin _$NutritionAbbreviationDTO {
  String get unit => throw _privateConstructorUsedError;
  String get nutrient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionAbbreviationDTOCopyWith<NutritionAbbreviationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionAbbreviationDTOCopyWith<$Res> {
  factory $NutritionAbbreviationDTOCopyWith(NutritionAbbreviationDTO value,
          $Res Function(NutritionAbbreviationDTO) then) =
      _$NutritionAbbreviationDTOCopyWithImpl<$Res>;
  $Res call({String unit, String nutrient});
}

/// @nodoc
class _$NutritionAbbreviationDTOCopyWithImpl<$Res>
    implements $NutritionAbbreviationDTOCopyWith<$Res> {
  _$NutritionAbbreviationDTOCopyWithImpl(this._value, this._then);

  final NutritionAbbreviationDTO _value;
  // ignore: unused_field
  final $Res Function(NutritionAbbreviationDTO) _then;

  @override
  $Res call({
    Object? unit = freezed,
    Object? nutrient = freezed,
  }) {
    return _then(_value.copyWith(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      nutrient: nutrient == freezed
          ? _value.nutrient
          : nutrient // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NutritionAbbreviationDTOCopyWith<$Res>
    implements $NutritionAbbreviationDTOCopyWith<$Res> {
  factory _$$_NutritionAbbreviationDTOCopyWith(
          _$_NutritionAbbreviationDTO value,
          $Res Function(_$_NutritionAbbreviationDTO) then) =
      __$$_NutritionAbbreviationDTOCopyWithImpl<$Res>;
  @override
  $Res call({String unit, String nutrient});
}

/// @nodoc
class __$$_NutritionAbbreviationDTOCopyWithImpl<$Res>
    extends _$NutritionAbbreviationDTOCopyWithImpl<$Res>
    implements _$$_NutritionAbbreviationDTOCopyWith<$Res> {
  __$$_NutritionAbbreviationDTOCopyWithImpl(_$_NutritionAbbreviationDTO _value,
      $Res Function(_$_NutritionAbbreviationDTO) _then)
      : super(_value, (v) => _then(v as _$_NutritionAbbreviationDTO));

  @override
  _$_NutritionAbbreviationDTO get _value =>
      super._value as _$_NutritionAbbreviationDTO;

  @override
  $Res call({
    Object? unit = freezed,
    Object? nutrient = freezed,
  }) {
    return _then(_$_NutritionAbbreviationDTO(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      nutrient: nutrient == freezed
          ? _value.nutrient
          : nutrient // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutritionAbbreviationDTO implements _NutritionAbbreviationDTO {
  const _$_NutritionAbbreviationDTO(
      {required this.unit, required this.nutrient});

  factory _$_NutritionAbbreviationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NutritionAbbreviationDTOFromJson(json);

  @override
  final String unit;
  @override
  final String nutrient;

  @override
  String toString() {
    return 'NutritionAbbreviationDTO(unit: $unit, nutrient: $nutrient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NutritionAbbreviationDTO &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.nutrient, nutrient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(nutrient));

  @JsonKey(ignore: true)
  @override
  _$$_NutritionAbbreviationDTOCopyWith<_$_NutritionAbbreviationDTO>
      get copyWith => __$$_NutritionAbbreviationDTOCopyWithImpl<
          _$_NutritionAbbreviationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutritionAbbreviationDTOToJson(
      this,
    );
  }
}

abstract class _NutritionAbbreviationDTO implements NutritionAbbreviationDTO {
  const factory _NutritionAbbreviationDTO(
      {required final String unit,
      required final String nutrient}) = _$_NutritionAbbreviationDTO;

  factory _NutritionAbbreviationDTO.fromJson(Map<String, dynamic> json) =
      _$_NutritionAbbreviationDTO.fromJson;

  @override
  String get unit;
  @override
  String get nutrient;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionAbbreviationDTOCopyWith<_$_NutritionAbbreviationDTO>
      get copyWith => throw _privateConstructorUsedError;
}
