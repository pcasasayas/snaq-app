
import 'package:freezed_annotation/freezed_annotation.dart';

import '../nutrition/nutrition_dto.dart';
import 'component/meal_component_dto.dart';

part 'meal_dto.freezed.dart';
part 'meal_dto.g.dart';

@freezed
class MealDTO with _$MealDTO {
  const factory MealDTO({
    required String id,
    required String created,
    required String image,
    required NutritionDTO nutrition,
    required List<MealComponentDTO> mealComponents,
  }) = _MealDTO;

  factory MealDTO.fromJson(Map<String, Object?> json)
      => _$MealDTOFromJson(json);
}