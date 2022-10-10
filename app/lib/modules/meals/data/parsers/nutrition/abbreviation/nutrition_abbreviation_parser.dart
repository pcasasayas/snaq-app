import '../../../datasource/local/entites/nutrition/abbreviation/nutrition_abbreviation_entity.dart';
import '../../../datasource/remote/dto/nutrition/abbreviation/nutrition_abbreviation_dto.dart';

abstract class NutritionAbbreviationParser {
  static NutritionAbbreviationEntity toEntity(NutritionAbbreviationDTO dto) {
    return NutritionAbbreviationEntity()
      ..unit = dto.unit
      ..nutrient = dto.nutrient;
  }
}