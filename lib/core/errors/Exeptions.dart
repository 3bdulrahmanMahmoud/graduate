// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:incubtor/core/errors/error_Model.dart';

class serverExeption implements Exception {
  final ErrorModel errorModel;

  serverExeption({required this.errorModel});
}

void HandleStatusCode(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw serverExeption(errorModel: ErrorModel.FromJson(e.response!.data));

    case DioExceptionType.sendTimeout:
      throw serverExeption(errorModel: ErrorModel.FromJson(e.response!.data));

    case DioExceptionType.receiveTimeout:
      throw serverExeption(errorModel: ErrorModel.FromJson(e.response!.data));

    case DioExceptionType.badCertificate:
      throw serverExeption(errorModel: ErrorModel.FromJson(e.response!.data));

    case DioExceptionType.cancel:
      throw serverExeption(errorModel: ErrorModel.FromJson(e.response!.data));

    case DioExceptionType.connectionError:
      throw serverExeption(errorModel: ErrorModel.FromJson(e.response!.data));

    case DioExceptionType.unknown:
      throw serverExeption(errorModel: ErrorModel.FromJson(e.response!.data));
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400:
          throw serverExeption(
              errorModel: ErrorModel.FromJson(e.response!.data));
        case 401:
          throw serverExeption(
              errorModel: ErrorModel.FromJson(e.response!.data));
        case 403:
          throw serverExeption(
              errorModel: ErrorModel.FromJson(e.response!.data));
        case 404:
          throw serverExeption(
              errorModel: ErrorModel.FromJson(e.response!.data));
        case 409:
          throw serverExeption(
              errorModel: ErrorModel.FromJson(e.response!.data));
        case 422:
          throw serverExeption(
              errorModel: ErrorModel.FromJson(e.response!.data));
        case 504:
          throw serverExeption(
              errorModel: ErrorModel.FromJson(e.response!.data));
      }
  }
}
