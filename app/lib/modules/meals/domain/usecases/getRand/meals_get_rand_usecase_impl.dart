
import 'package:app/modules/meals/data/exceptions/meals_exceptions.dart';
import 'package:app/modules/meals/data/repository/meals_repository.dart';
import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:core/base/data/api/exceptions/network/network_exceptions.dart';
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'meals_get_rand_usecase.dart';
import 'meals_get_rand_usecase_params.dart';

@Injectable(as: MealsGetRandUseCase)
class MealsGetRandUseCaseImpl implements MealsGetRandUseCase {
  MealsGetRandUseCaseImpl(this.mealsRepository);

  final MealsRepository mealsRepository;

  @override
  Future<Either<ExceptionModel, MealModel?>> execute(MealsGetRandUseCaseParams params) async {
    try {
      final mealsToDo = await mealsRepository.getMealsNotDone(
        exclude: params.exclude,
      );
      if (mealsToDo.isEmpty) {
        return const Right(null);
      }
      return Right((mealsToDo..shuffle()).first);
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

