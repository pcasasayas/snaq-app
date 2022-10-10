import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:app/modules/meals/domain/usecases/getRand/meals_get_rand_usecase_params.dart';
import 'package:core/base/domain/usecases/usecase.dart';

abstract class MealsGetRandUseCase extends UseCase<MealModel?, MealsGetRandUseCaseParams> {}

