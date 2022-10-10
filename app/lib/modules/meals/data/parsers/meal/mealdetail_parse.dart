

import 'package:app/modules/meals/data/datasource/local/entites/meal/meal_entity.dart';
import 'package:app/modules/meals/data/datasource/local/entites/meal/status/meal_status_entity.dart';
import 'package:app/modules/meals/data/parsers/meal/component/meal_component_parser.dart';
import 'package:app/modules/meals/domain/models/meal/detail/meal_detail_model.dart';

import '../nutrition/nutrition_parser.dart';

abstract class MealDetailParser {
  static MealDetailModel toModel(MealEntity entity) {
    return MealDetailModel(
      id: entity.id,
      externalId: entity.externalId,
      image: entity.image,
      status: entity.status.toModel(),
      nutrition: NutritionParser.toModel(entity.nutrition!),
      components: entity.mealComponents.map(
        (mealComponent) => MealComponentParser.toModel(mealComponent)
      ).toList(),
    );
  }
}