import 'package:freezed_annotation/freezed_annotation.dart';

part 'meals_exceptions.freezed.dart';

@freezed
class MealsExceptions with _$MealsExceptions {
  
  const factory MealsExceptions.notFoundError() = NotFoundError;

  const factory MealsExceptions.formatException() = FormatException;
  const factory MealsExceptions.unexpectedError() = UnexpectedError;
  const factory MealsExceptions.defaultError() = DefaultError;

  static String getErrorKey(MealsExceptions exception) {
    return exception.when(
      notFoundError: () => 'meals.errors.notfound',
      formatException: () => 'meals.errors.format',
      unexpectedError: () => 'meals.errors.unexpected',
      defaultError: () => 'meals.errors.default',
    );
  }
}