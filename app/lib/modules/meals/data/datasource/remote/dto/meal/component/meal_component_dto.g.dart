// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_component_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealComponentDTO _$$_MealComponentDTOFromJson(Map<String, dynamic> json) =>
    _$_MealComponentDTO(
      mainIngredient: json['mainIngredient'] == null
          ? null
          : IngredientDTO.fromJson(
              json['mainIngredient'] as Map<String, dynamic>),
      supplementaryIngredients:
          (json['supplementaryIngredients'] as List<dynamic>?)
              ?.map((e) => IngredientDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_MealComponentDTOToJson(_$_MealComponentDTO instance) =>
    <String, dynamic>{
      'mainIngredient': instance.mainIngredient,
      'supplementaryIngredients': instance.supplementaryIngredients,
    };
