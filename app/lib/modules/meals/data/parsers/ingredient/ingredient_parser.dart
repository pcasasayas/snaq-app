import 'package:app/modules/meals/data/parsers/nutrition/nutrition_parser.dart';
import 'package:app/modules/meals/domain/models/meal/ingredient/ingredient_model.dart';
import '../../datasource/local/entites/ingredient/ingredient_entity.dart';
import '../../datasource/remote/dto/ingredient/ingredient_dto.dart';

abstract class IngredientParser {
  static IngredientEntity toEntity(IngredientDTO dto) {
    return IngredientEntity()
      ..name = dto.name
      ..nutrition = NutritionParser.toEntity(dto.nutrition);
  }

  static IngredientModel toModel(IngredientEntity entity) {
    return IngredientModel(
      name: entity.name,
      nutrition: NutritionParser.toModel(entity.nutrition!),
    );
  }
}