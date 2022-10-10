import 'package:isar/isar.dart';
import '../nutrition/nutrition_entity.dart';

part 'ingredient_entity.g.dart';

@embedded
class IngredientEntity {
  String name = '';
  
  NutritionEntity? nutrition;
}