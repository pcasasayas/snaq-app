
import 'package:app/modules/meals/data/exceptions/meals_exceptions.dart';
import 'package:app/modules/meals/data/repository/meals_repository.dart';
import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:core/base/data/api/exceptions/network/network_exceptions.dart';
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'meals_get_all_usecase.dart';
import 'meals_get_all_usecase_params.dart';

@Injectable(as: MealsGetAllUseCase)
class MealsGetAllUseCaseImpl implements MealsGetAllUseCase {
  MealsGetAllUseCaseImpl(this.mealsRepository);

  final MealsRepository mealsRepository;

  @override
  Future<Either<ExceptionModel, List<MealModel>>> execute(MealsGetAllUseCaseParams params) async {
    try {
      final meals = await mealsRepository.getMeals(params.offset, params.limit);
      return Right(meals);
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

