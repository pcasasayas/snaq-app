
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../session/data/exceptions/session_exceptions.dart';
import '../../../../data/session/onboarding_repository.dart';
import 'onboarded_set_usecase.dart';

@Injectable(as: OnBoardedSetUseCase)
class OnBoardedSetUseCaseImpl implements OnBoardedSetUseCase {
  OnBoardedSetUseCaseImpl(this.onBoardingRepository);

  final OnBoardingRepository onBoardingRepository;

  @override
  Future<Either<ExceptionModel, void>> execute(bool params) async {
    try {
      await onBoardingRepository.setOnBoarded(
        onBoarded: params
      );
      return const Right(null);
    } on Exception {
      return Left(ExceptionModel(
        textKey: SessionExceptions.getErrorKey(
          const SessionExceptions.unexpectedError()
        ))
      );
    }
  }
}

