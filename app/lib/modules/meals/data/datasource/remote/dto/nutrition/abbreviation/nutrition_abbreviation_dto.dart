import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_abbreviation_dto.freezed.dart';
part 'nutrition_abbreviation_dto.g.dart';

@freezed
class NutritionAbbreviationDTO with _$NutritionAbbreviationDTO {
  const factory NutritionAbbreviationDTO({
    required String unit,
    required String nutrient,
    
  }) = _NutritionAbbreviationDTO;

  factory NutritionAbbreviationDTO.fromJson(Map<String, Object?> json)
      => _$NutritionAbbreviationDTOFromJson(json);
}