// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealDTO _$$_MealDTOFromJson(Map<String, dynamic> json) => _$_MealDTO(
      id: json['id'] as String,
      created: json['created'] as String,
      image: json['image'] as String,
      nutrition:
          NutritionDTO.fromJson(json['nutrition'] as Map<String, dynamic>),
      mealComponents: (json['mealComponents'] as List<dynamic>)
          .map((e) => MealComponentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MealDTOToJson(_$_MealDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'image': instance.image,
      'nutrition': instance.nutrition,
      'mealComponents': instance.mealComponents,
    };
