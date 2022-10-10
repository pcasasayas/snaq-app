import 'package:app/modules/meals/data/datasource/local/entites/nutrition/value/nutrition_value_entity.dart';
import 'package:isar/isar.dart';

part 'nutrition_entity.g.dart';

@embedded
class NutritionEntity {
  NutritionValueEntity? carbohydrates;

  NutritionValueEntity? fatTotal;

  NutritionValueEntity? protein;

  NutritionValueEntity? energy;
}