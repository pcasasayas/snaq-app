import 'package:freezed_annotation/freezed_annotation.dart';

import '../nutrition/nutrition_dto.dart';

part 'ingredient_dto.freezed.dart';
part 'ingredient_dto.g.dart';

@freezed
class IngredientDTO with _$IngredientDTO {
  const factory IngredientDTO({
    required String name,
    required NutritionDTO nutrition,
  }) = _IngredientDTO;

  factory IngredientDTO.fromJson(Map<String, Object?> json)
      => _$IngredientDTOFromJson(json);
}