
import 'package:app/modules/meals/data/exceptions/meals_exceptions.dart';
import 'package:app/modules/meals/data/repository/meals_repository.dart';
import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:core/base/data/api/exceptions/network/network_exceptions.dart';
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'meals_get_notdone_usecase.dart';

@Injectable(as: MealsGetNotDoneUseCase)
class MealsGetNotDoneUseCaseImpl implements MealsGetNotDoneUseCase {
  MealsGetNotDoneUseCaseImpl(this.mealsRepository);

  final MealsRepository mealsRepository;

  @override
  Future<Either<ExceptionModel, List<MealModel>>> execute(void params) async {
    try {
      final mealsToDo = await mealsRepository.getMealsNotDone();
      if (mealsToDo.isEmpty) {
        return const Right([]);
      }
      return Right(mealsToDo);
    } on Exception {
      return Left(ExceptionModel(
        textKey: MealsExceptions.getErrorKey(
          const MealsExceptions.unexpectedError()
        ))
      );
    } on NetworkExceptions catch (e) {
      return Left(ExceptionModel(
        textKey: NetworkExceptions.getErrorKey(e)
      ));
    }
  }
}

