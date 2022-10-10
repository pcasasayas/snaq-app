import 'package:app/modules/meals/data/datasource/local/entites/meal/meal_entity.dart';

import 'entites/meal/status/meal_status_entity.dart';

abstract class MealsLocalDataSource {
  Future<bool> isEmpty();
  Future<void> insertMeals(List<MealEntity> meals);
  Future<List<MealEntity>> getMeals(int offset, int limit);
  Future<List<MealEntity>> getMealsNotDone(int offset, int limit);
  Future<List<MealEntity>> getMealsExcluding(int offset, int limit, List<int> exclude);
  Future<MealEntity?> getMeal(int id);
  Future<void> setMealStatus(int id, MealStatusEntity newStatus);
}