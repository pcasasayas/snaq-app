// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_value_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutritionValueDTO _$$_NutritionValueDTOFromJson(Map<String, dynamic> json) =>
    _$_NutritionValueDTO(
      name: json['name'] as String,
      unit: json['unit'] as String,
      value: json['value'] as int,
      valueWithPrecision: (json['valueWithPrecision'] as num).toDouble(),
      abbreviation: NutritionAbbreviationDTO.fromJson(
          json['abbreviation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NutritionValueDTOToJson(
        _$_NutritionValueDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'unit': instance.unit,
      'value': instance.value,
      'valueWithPrecision': instance.valueWithPrecision,
      'abbreviation': instance.abbreviation,
    };
