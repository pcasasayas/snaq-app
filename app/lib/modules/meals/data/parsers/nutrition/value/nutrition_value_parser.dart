import '../../../../domain/models/nutrition/value/nutrition_value_model.dart';
import '../../../datasource/local/entites/nutrition/value/nutrition_value_entity.dart';
import '../../../datasource/remote/dto/nutrition/value/nutrition_value_dto.dart';
import '../abbreviation/nutrition_abbreviation_parser.dart';

abstract class NutritionValueParser {
  static NutritionValueEntity toEntity(NutritionValueDTO dto) {
    return NutritionValueEntity()
      ..name = dto.name
      ..unit = dto.unit
      ..value = dto.value
      ..valueWithPrecision = dto.valueWithPrecision
      ..abbreviation = NutritionAbbreviationParser.toEntity(dto.abbreviation);
  }

  static NutritionValueModel toModel(NutritionValueEntity entity) {
    return NutritionValueModel(
      nameAbbreviation: entity.abbreviation!.nutrient,
      unitAbbreviation: entity.abbreviation!.unit,
      value: entity.value,
      valueWithPrecision: entity.valueWithPrecision,
    );
  }
}