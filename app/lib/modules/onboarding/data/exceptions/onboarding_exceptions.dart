import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_exceptions.freezed.dart';

@freezed
class OnBoardingExceptions with _$OnBoardingExceptions {
  
  const factory OnBoardingExceptions.formatException() = FormatException;
  const factory OnBoardingExceptions.unexpectedError() = UnexpectedError;
  const factory OnBoardingExceptions.defaultError() = DefaultError;

  static String getErrorKey(OnBoardingExceptions exception) {
    return exception.when(
      formatException: () => 'onboarding.errors.format',
      unexpectedError: () => 'onboarding.errors.unexpected',
      defaultError: () => 'onboarding.errors.default',
    );
  }
}