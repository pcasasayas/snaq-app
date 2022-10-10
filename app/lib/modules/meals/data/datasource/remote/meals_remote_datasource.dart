import 'dto/meal/meal_dto.dart';

abstract class MealsRemoteDataSource {
  Future<List<MealDTO>> getMeals();
}