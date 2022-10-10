import 'package:freezed_annotation/freezed_annotation.dart';

import 'value/nutrition_value_dto.dart';

part 'nutrition_dto.freezed.dart';
part 'nutrition_dto.g.dart';

@freezed
class NutritionDTO with _$NutritionDTO {
  const factory NutritionDTO({
    required NutritionValueDTO carbohydrates,
    required NutritionValueDTO fatTotal,
    required NutritionValueDTO protein,
    required NutritionValueDTO energy,
    
  }) = _NutritionDTO;

  factory NutritionDTO.fromJson(Map<String, Object?> json)
      => _$NutritionDTOFromJson(json);
}