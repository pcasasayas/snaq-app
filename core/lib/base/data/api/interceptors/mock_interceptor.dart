import 'dart:convert';
 
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class MockInterceptor extends Interceptor {

  MockInterceptor();

  static const _jsonDir = 'assets/responses/';
  static const _jsonExtension = '.json';

//  EXAMPLE: assets/responses/api-client-public-loginwithcredentials.json
 
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final resourcePath = _jsonDir + options.path.replaceAll('/', '-') + _jsonExtension;
    final data = await rootBundle.load(resourcePath);
    final map = json.decode(
      utf8.decode(
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      ),
    );

    await Future.delayed(const Duration(seconds: 2));
    // handler.reject(DioError(
    //   requestOptions: options,
    //   type: DioErrorType.connectTimeout,
    // ));
    handler.resolve(Response(
      data: map,
      statusCode: 200,
      requestOptions: options,
    ));
  }
}