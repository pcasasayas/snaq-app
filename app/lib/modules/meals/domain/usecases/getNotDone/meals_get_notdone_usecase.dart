import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:core/base/domain/usecases/usecase.dart';

abstract class MealsGetNotDoneUseCase extends UseCase<List<MealModel>, void> {}

