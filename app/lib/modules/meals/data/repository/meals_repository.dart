
import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:app/modules/meals/domain/models/meal/status/meal_status_model.dart';

import '../../domain/models/meal/detail/meal_detail_model.dart';

abstract class MealsRepository {
  Future<MealDetailModel?> getMeal(int id);
  Future<List<MealModel>> getMealsNotDone({List<int> exclude = const []});
  Future<List<MealModel>> getMeals(int offset, int limit);
  Future<void> setMealStatus(int id, MealStatusModel newStatus);
}