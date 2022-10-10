import 'dart:convert';
import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';

import 'exceptions/network/network_exceptions.dart';
import 'interceptors/logging_interceptor.dart';
import 'interceptors/mock_interceptor.dart';
import 'models/ijson_parcelable.dart';

@lazySingleton
class ApiClient {
  static const connectTimeoutInMillis = 30 * 1000;
  static const receiveTimeoutInMillis = 15 * 1000;

  final Dio dio;

  final LoggingInterceptor _loggingInterceptor;
  final MockInterceptor _mockInterceptor;
  
  ApiClient(this.dio, this._loggingInterceptor, this._mockInterceptor) {
    // dio.options.baseUrl = NetConfig.SERVER;
    dio.options.connectTimeout = connectTimeoutInMillis;
    dio.options.receiveTimeout = receiveTimeoutInMillis;
    dio.options.contentType = Headers.formUrlEncodedContentType;
    dio.interceptors.add(_loggingInterceptor);
    (dio.transformer as DefaultTransformer).jsonDecodeCallback = parseJson;
    
    // if (NetConfig.MOCK_SERVER) {
    //   dio.interceptors.add(_mockInterceptor);
    // }
  }

  // Must be top-level function
  dynamic _parseAndDecode(String response) {
    return jsonDecode(response);
  }

  Future parseJson(String text) async {
    return _parseAndDecode(text);
  }

  Future<Response<T>> post<T>({required String path, IJsonParcelable? data}) {
    return dio.post<T>(
      path,
      data: data != null ? data.toJson() : <String, dynamic>{},
    ).catchError((error) { 
      throw NetworkExceptions.getDioException(error);
    });
  }

  Future<Response<T>> get<T>({required String path, IJsonParcelable? queryParameters}) {
    return dio.get<T>(
      path,
      queryParameters: queryParameters != null ? queryParameters.toJson() : <String, dynamic>{},
    ).catchError((error) { 
      throw NetworkExceptions.getDioException(error);
    });
  }
}