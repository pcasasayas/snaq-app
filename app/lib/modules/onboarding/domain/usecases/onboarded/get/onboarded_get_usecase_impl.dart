
import 'package:app/modules/onboarding/data/exceptions/onboarding_exceptions.dart';
import 'package:app/modules/onboarding/data/session/onboarding_repository.dart';
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'onboarded_get_usecase.dart';

@Injectable(as: OnBoardedGetUseCase)
class OnBoardedGetUseCaseImpl implements OnBoardedGetUseCase {
  OnBoardedGetUseCaseImpl(this.onBoardingRepository);

  final OnBoardingRepository onBoardingRepository;

  @override
  Future<Either<ExceptionModel, bool>> execute(void params) async {
    try {
      final onBoarded = await onBoardingRepository.getOnBoarded();
      return Right(onBoarded);
    } on Exception {
      return Left(ExceptionModel(
        textKey: OnBoardingExceptions.getErrorKey(
          const OnBoardingExceptions.unexpectedError()
        ))
      );
    }
  }
}

