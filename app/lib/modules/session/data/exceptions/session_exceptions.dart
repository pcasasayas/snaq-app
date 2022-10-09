import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_exceptions.freezed.dart';

@freezed
class SessionExceptions with _$SessionExceptions {
  
  const factory SessionExceptions.formatException() = FormatException;
  const factory SessionExceptions.unexpectedError() = UnexpectedError;
  const factory SessionExceptions.defaultError() = DefaultError;

  static String getErrorKey(SessionExceptions exception) {
    return exception.when(
      formatException: () => 'session.errors.format',
      unexpectedError: () => 'session.errors.unexpected',
      defaultError: () => 'session.errors.default',
    );
  }
}