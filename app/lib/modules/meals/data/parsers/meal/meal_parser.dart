

import 'package:app/modules/meals/data/datasource/local/entites/meal/meal_entity.dart';
import 'package:app/modules/meals/data/datasource/local/entites/meal/status/meal_status_entity.dart';
import 'package:app/modules/meals/data/datasource/remote/dto/meal/meal_dto.dart';
import 'package:app/modules/meals/domain/models/meal/meal_model.dart';

import '../nutrition/nutrition_parser.dart';
import 'component/meal_component_parser.dart';

abstract class MealParser {
  static MealEntity toEntity(MealDTO dto) {
    return MealEntity()
      ..externalId = dto.id
      ..created = dto.created
      ..image = dto.image
      ..nutrition = NutritionParser.toEntity(dto.nutrition)
      ..mealComponents = dto.mealComponents.map(
        (mealComponent) => MealComponentParser.toEntity(mealComponent)
    ).toList();
  }

  static MealModel toModel(MealEntity entity) {
    return MealModel(
      id: entity.id,
      externalId: entity.externalId,
      image: entity.image,
      status: entity.status.toModel(),
      nutrition: NutritionParser.toModel(entity.nutrition!),
      ingredients: entity.mealComponents.map(
        (mealComponent) => mealComponent.mainIngredient != null ? 
          mealComponent.mainIngredient!.name : ''
      ).toList(),
    );
  }
}