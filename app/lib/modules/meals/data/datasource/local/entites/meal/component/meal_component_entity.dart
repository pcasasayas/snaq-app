import 'package:app/modules/meals/data/datasource/local/entites/ingredient/ingredient_entity.dart';
import 'package:isar/isar.dart';

part 'meal_component_entity.g.dart';

@embedded
class MealComponentEntity {
  IngredientEntity? mainIngredient;

  List<IngredientEntity> supplementaryIngredients = [];
}