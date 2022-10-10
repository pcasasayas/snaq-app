import 'package:freezed_annotation/freezed_annotation.dart';

import '../abbreviation/nutrition_abbreviation_dto.dart';

part 'nutrition_value_dto.freezed.dart';
part 'nutrition_value_dto.g.dart';

@freezed
class NutritionValueDTO with _$NutritionValueDTO {
  const factory NutritionValueDTO({
    required String name,
    required String unit,
    required int value,
    required double valueWithPrecision,
    required NutritionAbbreviationDTO abbreviation,
  }) = _NutritionValueDTO;

  factory NutritionValueDTO.fromJson(Map<String, Object?> json)
      => _$NutritionValueDTOFromJson(json);
}