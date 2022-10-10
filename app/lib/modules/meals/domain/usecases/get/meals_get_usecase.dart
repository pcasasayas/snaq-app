import 'package:app/modules/meals/domain/models/meal/detail/meal_detail_model.dart';
import 'package:core/base/domain/usecases/usecase.dart';

import 'meals_get_usecase_params.dart';

abstract class MealsGetUseCase extends UseCase<MealDetailModel, MealsGetUseCaseParams> {}

