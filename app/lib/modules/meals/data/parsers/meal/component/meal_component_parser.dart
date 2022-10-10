import 'package:app/modules/meals/data/parsers/ingredient/ingredient_parser.dart';
import 'package:app/modules/meals/domain/models/mealComponent/mealcomponent_model.dart';

import '../../../datasource/local/entites/meal/component/meal_component_entity.dart';
import '../../../datasource/remote/dto/meal/component/meal_component_dto.dart';

abstract class MealComponentParser {
  static MealComponentEntity toEntity(MealComponentDTO dto) {
    return MealComponentEntity()
      ..mainIngredient = dto.mainIngredient != null ? 
        IngredientParser.toEntity(dto.mainIngredient!) : null
      ..supplementaryIngredients = dto.supplementaryIngredients != null ?
        dto.supplementaryIngredients!.map(
          (supplementaryIngredient) => IngredientParser.toEntity(supplementaryIngredient)
        ).toList() : [];
  }

  static MealComponentModel toModel(MealComponentEntity entity) {
    return MealComponentModel(
      mainIngredient: entity.mainIngredient != null ?
        IngredientParser.toModel(entity.mainIngredient!) : null,
      supplementaryIngredients: entity.supplementaryIngredients.map(
        (supplementaryIngredient) => IngredientParser.toModel(supplementaryIngredient)
      ).toList(),
    );
  }
}