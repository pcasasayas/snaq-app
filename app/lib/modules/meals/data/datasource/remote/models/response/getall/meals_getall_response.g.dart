// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meals_getall_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealsGetAllResponse _$$_MealsGetAllResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MealsGetAllResponse(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => MealDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MealsGetAllResponseToJson(
        _$_MealsGetAllResponse instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
