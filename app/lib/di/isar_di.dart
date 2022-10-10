import 'package:app/modules/meals/data/datasource/local/entites/meal/meal_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@module
abstract class IsarDi {
  @lazySingleton
  Isar get isar => Isar.openSync([
    MealEntitySchema
  ]);
}