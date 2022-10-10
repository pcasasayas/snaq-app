
import 'package:app/modules/meals/data/datasource/local/entites/meal/status/meal_status_entity.dart';
import 'package:app/modules/meals/data/datasource/local/meals_local_datasource.dart';
import 'package:app/modules/meals/data/datasource/remote/meals_remote_datasource.dart';
import 'package:app/modules/meals/data/parsers/meal/meal_parser.dart';
import 'package:app/modules/meals/data/repository/meals_repository.dart';
import 'package:app/modules/meals/domain/models/meal/status/meal_status_model.dart';
import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/meal/detail/meal_detail_model.dart';
import '../parsers/meal/mealdetail_parse.dart';

@Injectable(as: MealsRepository)
class MealsRepositoryImpl implements MealsRepository {
  MealsRepositoryImpl(
    this.mealsLocalDataSource,
    this.mealsRemoteDataSource
  );

  final MealsLocalDataSource mealsLocalDataSource;
  final MealsRemoteDataSource mealsRemoteDataSource;

  @override
  Future<MealDetailModel?> getMeal(int id) async {
    await checkRemoteFetch();
    final mealEntity = await mealsLocalDataSource.getMeal(id);
    if (mealEntity == null) return null;
    return MealDetailParser.toModel(mealEntity);
  }
  
  @override
  Future<List<MealModel>> getMealsNotDone({List<int> exclude = const []}) async {
    await checkRemoteFetch();
    final mealEntities = await mealsLocalDataSource.getMealsNotDone(
      0,
      10,
    );
    return mealEntities.map(
      (mealEntity) => MealParser.toModel(mealEntity)
    ).toList();
  }

  @override
  Future<List<MealModel>> getMeals(int offset, int limit) async {
    await checkRemoteFetch();
    final mealEntities = await mealsLocalDataSource.getMeals(
      offset,
      limit,
    );
    return mealEntities.map(
      (mealEntity) => MealParser.toModel(mealEntity)
    ).toList();
  }

  @override
  Future<void> setMealStatus(int id, MealStatusModel newStatus) async {
    await mealsLocalDataSource.setMealStatus(
      id,
      MealStatusEntityParser.fromModel(newStatus)
    );
  }

  Future<void> checkRemoteFetch() async {
    final needsFetch = await mealsLocalDataSource.isEmpty();
    if (needsFetch) {
      final mealsDTO = await mealsRemoteDataSource.getMeals();
      final mealsEntity = mealsDTO.map(
        (mealDTO) => MealParser.toEntity(mealDTO)
      ).toList();
      await mealsLocalDataSource.insertMeals(mealsEntity);
    }
  }
}