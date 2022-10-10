import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:core/base/domain/usecases/usecase.dart';

import 'meals_get_all_usecase_params.dart';

abstract class MealsGetAllUseCase extends UseCase<List<MealModel>, MealsGetAllUseCaseParams> {}

