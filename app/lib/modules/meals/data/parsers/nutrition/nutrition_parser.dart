import 'package:app/modules/meals/domain/models/nutrition/nutrition_model.dart';

import '../../datasource/local/entites/nutrition/nutrition_entity.dart';
import '../../datasource/remote/dto/nutrition/nutrition_dto.dart';
import 'value/nutrition_value_parser.dart';

abstract class NutritionParser {
  static NutritionEntity toEntity(NutritionDTO dto) {
    return NutritionEntity()
      ..carbohydrates = NutritionValueParser.toEntity(dto.carbohydrates)
      ..fatTotal = NutritionValueParser.toEntity(dto.fatTotal)
      ..protein = NutritionValueParser.toEntity(dto.protein)
      ..energy = NutritionValueParser.toEntity(dto.energy);
  }

  static NutritionModel toModel(NutritionEntity entity) {
    return NutritionModel(
      carbohydrates: NutritionValueParser.toModel(entity.carbohydrates!),
      energy: NutritionValueParser.toModel(entity.energy!),
      fatTotal: NutritionValueParser.toModel(entity.fatTotal!),
      protein: NutritionValueParser.toModel(entity.protein!),
    );
  }
}