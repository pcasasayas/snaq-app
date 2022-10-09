import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorisedRequest() = UnauthorisedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound() = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError() = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions exception;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              exception = const NetworkExceptions.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              exception = const NetworkExceptions.requestTimeout();
              break;
            case DioErrorType.other:
              exception = const NetworkExceptions.noInternetConnection();
              break;
            case DioErrorType.receiveTimeout:
              exception = const NetworkExceptions.sendTimeout();
              break;
            case DioErrorType.response:
              switch (error.response!.statusCode) {
                case 400:
                  exception = const NetworkExceptions.unauthorisedRequest();
                  break;
                case 401:
                  exception = const NetworkExceptions.unauthorisedRequest();
                  break;
                case 403:
                  exception = const NetworkExceptions.unauthorisedRequest();
                  break;
                case 404:
                  exception = const NetworkExceptions.notFound();
                  break;
                case 409:
                  exception = const NetworkExceptions.conflict();
                  break;
                case 408:
                  exception = const NetworkExceptions.requestTimeout();
                  break;
                case 500:
                  exception = const NetworkExceptions.internalServerError();
                  break;
                case 503:
                  exception = const NetworkExceptions.serviceUnavailable();
                  break;
                default:
                  exception = const NetworkExceptions.defaultError();
              }
              break;
            case DioErrorType.sendTimeout:
              exception = const NetworkExceptions.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          exception = const NetworkExceptions.noInternetConnection();
        } else {
          exception = const NetworkExceptions.unexpectedError();
        }
        return exception;
      } on FormatException catch (_) {
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorKey(NetworkExceptions exception) {
    return exception.when(
      notImplemented: () => 'network_errors.not_implemented',
      requestCancelled: () => 'network_errors.request_cancelled',
      internalServerError: () => 'network_errors.internal_server',
      notFound: () => 'network_errors.not_found',
      serviceUnavailable: () => 'network_errors.service_unavailable',
      methodNotAllowed: () => 'network_errors.method_not_allowed',
      badRequest: () => 'network_errors.bad_request',
      unauthorisedRequest: () => 'network_errors.unauthorized_request',
      unexpectedError: () => 'network_errors.unexpected',
      requestTimeout: () => 'network_errors.request_timout',
      noInternetConnection: () => 'network_errors.no_internet_connection',
      conflict: () => 'network_errors.conflict',
      sendTimeout: () => 'network_errors.send_timeout',
      unableToProcess: () => 'network_errors.unable_to_process',
      defaultError: () => 'network_errors.default',
      formatException: () => 'network_errors.format_exception',
      notAcceptable: () => 'network_errors.not_acceptable',
    );
    
  }
}