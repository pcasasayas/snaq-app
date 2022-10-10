import 'package:app/modules/meals/data/datasource/local/entites/meal/meal_entity.dart';
import 'package:app/modules/meals/data/datasource/local/entites/meal/status/meal_status_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import 'meals_local_datasource.dart';

@Injectable(as: MealsLocalDataSource)
class MealsLocalDataSourceImpl implements MealsLocalDataSource {
  MealsLocalDataSourceImpl(this._isar);

  final Isar _isar;

  @override
  Future<List<MealEntity>> getMeals(int offset, int limit) async {
    return await _isar.mealEntitys.where()
      .offset(offset)
      .limit(limit)
      .findAll();
  }

  @override
  Future<List<MealEntity>> getMealsNotDone(int offset, int limit) async {
    return await _isar.mealEntitys.filter()
      .statusEqualTo(MealStatusEntity.none)
      .or()
      .statusEqualTo(MealStatusEntity.skiped)
      .offset(offset)
      .limit(limit)
      .findAll();
  }

  @override
  Future<List<MealEntity>> getMealsExcluding(int offset, int limit, List<int> exclude) async {
    return await _isar.mealEntitys.filter()
      .not().anyOf(exclude, (q, element) => q.idEqualTo(element))
      .offset(offset)
      .limit(limit)
      .findAll();
  }

  @override
  Future<MealEntity?> getMeal(int id) async {
    return await _isar.mealEntitys.where()
      .idEqualTo(id)
      .findFirst();
  }

  @override
  Future<void> setMealStatus(int id, MealStatusEntity newStatus) async {
    var meal = await getMeal(id);
    if (meal != null) {
      meal.status = newStatus;
      await _isar.writeTxn(() async {
        await _isar.mealEntitys.put(meal);
      });
    }
  }
  
  @override
  Future<bool> isEmpty() async {
    final count = await _isar.mealEntitys.count();
    return count <= 0;
  }

  @override
  Future<void> insertMeals(List<MealEntity> meals) async {
    await _isar.writeTxn(() async {
      for (final meal in meals) {
        await _isar.mealEntitys.put(meal);
      }
    });
  }
}