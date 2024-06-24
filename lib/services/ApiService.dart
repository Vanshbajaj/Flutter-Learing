import 'dart:async';
import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  late Dio _dio;

  ApiService() {
    _dio = Dio(BaseOptions(
      headers: {
        'App-Token': 'TesAPIToken456321',
        'Cookie': 'mudrahome_session=BWo3SRY9WtjmA2ctUXnXJliVdzBkst3KI09RsGrr',
      },
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ));

    // Add logging interceptor
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        if (kDebugMode) {
          print('REQUEST[${options.method}] => PATH: ${options.path}');
        }
        return handler.next(options); //continue
      },
      onResponse: (response, handler) {
        if (kDebugMode) {
          print('RESPONSE[${response.statusCode}] => DATA: ${response.data}');
        }
        return handler.next(response); // continue
      },
      onError: (DioException error, handler) {
        if (kDebugMode) {
          print(
              'ERROR[${error.response?.statusCode}] => MESSAGE: ${error.message}');
        }
        return handler.next(error); //continue
      },
    ));
  }

  Future<dynamic> get(String endpoint,
      {required Map<String, dynamic> queryParams}) async {
    try {
      return await _dio.get(endpoint, queryParameters: queryParams);
    } on DioException catch (e) {
      return _handleError(e);
    }
  }

  Future<dynamic> post(String endpoint,
      {required Map<String, dynamic> data}) async {
    try {
      final response = await _dio.post(endpoint, data: FormData.fromMap(data));
      return response;
    } on DioException catch (e) {
      return _handleError(e);
    }
  }

  Future<void> _handleError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout) {
      throw Exception('Connection Timeout Exception');
    } else if (error.type == DioExceptionType.receiveTimeout) {
      throw Exception('Receive Timeout Exception');
    } else if (error.type == DioExceptionType.badResponse) {
      throw Exception(
          'Received invalid status code: ${error.response?.statusCode}');
    } else if (error.type == DioExceptionType.unknown) {
      throw Exception('Connection failed due to internet connection');
    } else {
      throw Exception('Unexpected error occurred');
    }
  }
}
