import 'package:isar/isar.dart';

import '../ingredient/ingredient_entity.dart';
import '../nutrition/abbreviation/nutrition_abbreviation_entity.dart';
import '../nutrition/nutrition_entity.dart';
import '../nutrition/value/nutrition_value_entity.dart';
import 'component/meal_component_entity.dart';
import 'status/meal_status_entity.dart';

part 'meal_entity.g.dart';

@collection
class MealEntity {
  Id id = Isar.autoIncrement;
  
  String externalId = '';

  String created = '';

  String image = '';

  NutritionEntity? nutrition;
  
  List<MealComponentEntity> mealComponents = [];

  @enumerated
  MealStatusEntity status = MealStatusEntity.none;
}