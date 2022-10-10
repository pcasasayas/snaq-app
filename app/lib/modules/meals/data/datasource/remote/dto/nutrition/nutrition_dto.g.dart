// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutritionDTO _$$_NutritionDTOFromJson(Map<String, dynamic> json) =>
    _$_NutritionDTO(
      carbohydrates: NutritionValueDTO.fromJson(
          json['carbohydrates'] as Map<String, dynamic>),
      fatTotal:
          NutritionValueDTO.fromJson(json['fatTotal'] as Map<String, dynamic>),
      protein:
          NutritionValueDTO.fromJson(json['protein'] as Map<String, dynamic>),
      energy:
          NutritionValueDTO.fromJson(json['energy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NutritionDTOToJson(_$_NutritionDTO instance) =>
    <String, dynamic>{
      'carbohydrates': instance.carbohydrates,
      'fatTotal': instance.fatTotal,
      'protein': instance.protein,
      'energy': instance.energy,
    };
