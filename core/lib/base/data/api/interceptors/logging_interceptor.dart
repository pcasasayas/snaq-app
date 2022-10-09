
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../logger/logger.dart';

@injectable
class LoggingInterceptor implements Interceptor {
  @override
  void onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    logError(err);
    // Do something with response error
    handler.next(err);//continue
  }
  
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    logRequest(options);
    // Do something before request is sent
    // handler.next(options); //continue
    // If you want to resolve the request with some custom data，
    // you can return a `Response` object or return `dio.resolve(data)`.
    // If you want to reject the request with a error message,
    // you can return a `DioError` object or return `dio.reject(errMsg)`
    handler.next(options);//continue
  }
  
  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    logResponse(response);
    // Do something with response data
    handler.next(response); // continue
  }

  void logRequest(RequestOptions options) {
    MyLogger.d(tag: options.path, msg: 'REQ ${options.baseUrl.toString()} ${options.path.toString()} ${options.queryParameters.toString()} ${options.data.toString()}');
  }

  void logResponse(Response resp) {
    MyLogger.d(tag: resp.requestOptions.path, msg: 'RESP ${resp.toString()}');
  }

  void logError(DioError err) {
    var responseError = '';
    if (err.response != null && err.response!.data != null) {
      responseError = err.toString();
    }
    MyLogger.e(tag: err.requestOptions.path, msg: 'ERROR ${err.error.toString()} $responseError');
  }

}