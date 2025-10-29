import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

final _logger = Logger();

class ApiClient {
  static const String baseUrl = 'https://backend/';
  static final Dio dio = Dio(_createBaseOptions());

  static BaseOptions _createBaseOptions() {
    return BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
  }

  static void configureLogging() {
    dio.interceptors.add(
        LogInterceptor(
          request: true,
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          logPrint: (obj) => _logger.d(obj),
        )
    );
  }
}