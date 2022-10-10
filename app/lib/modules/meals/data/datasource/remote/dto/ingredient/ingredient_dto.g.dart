// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IngredientDTO _$$_IngredientDTOFromJson(Map<String, dynamic> json) =>
    _$_IngredientDTO(
      name: json['name'] as String,
      nutrition:
          NutritionDTO.fromJson(json['nutrition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IngredientDTOToJson(_$_IngredientDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nutrition': instance.nutrition,
    };
