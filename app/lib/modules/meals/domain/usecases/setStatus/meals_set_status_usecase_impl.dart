
import 'package:app/modules/meals/data/exceptions/meals_exceptions.dart';
import 'package:app/modules/meals/data/repository/meals_repository.dart';
import 'package:core/base/data/api/exceptions/network/network_exceptions.dart';
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'meals_set_status_usecase.dart';
import 'meals_set_status_usecase_params.dart';

@Injectable(as: MealsSetStatusUseCase)
class MealsSetStatusUseCaseImpl implements MealsSetStatusUseCase {
  MealsSetStatusUseCaseImpl(this.mealsRepository);

  final MealsRepository mealsRepository;

  @override
  Future<Either<ExceptionModel, void>> execute(MealsSetStatusUseCaseParams params) async {
    try {
      await mealsRepository.setMealStatus(
        params.id,
        params.newStatus
      );
      return const Right(null);
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

