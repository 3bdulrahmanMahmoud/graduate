// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:incubtor/core/api/Api_interceptors.dart';
import 'package:incubtor/core/api/api_consumer.dart';
import 'package:incubtor/core/api/end_points.dart';
import 'package:incubtor/core/errors/Exeptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }

  @override
  Future delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparamters,
    bool isFromData = false,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryparamters,
      );
      return response.data;
    } on DioException catch (e) {
      HandleStatusCode(e);
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryparamters}) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryparamters,
      );
      return response.data;
    } on DioException catch (e) {
      HandleStatusCode(e);
    }
  }

  @override
  Future patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparamters,
    bool isFromData = false,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryparamters,
      );
      return response.data;
    } on DioException catch (e) {
      HandleStatusCode(e);
    }
  }

  @override
  Future post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparamters,
    bool isFromData = false,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryparamters,
      );
      return response.data;
    } on DioException catch (e) {
      HandleStatusCode(e);
    }
  }
}
