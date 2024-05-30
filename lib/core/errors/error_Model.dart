// ignore_for_file: file_names, non_constant_identifier_names

import 'package:incubtor/core/api/end_points.dart';

class ErrorModel {
  final String status;
  final String errorMessage;
  final int code;
  final dynamic data;

  factory ErrorModel.FromJson(jsondata) {
    return ErrorModel(
      status: jsondata[ApiKey.status],
      errorMessage: jsondata[ApiKey.errmessage],
      code: jsondata[ApiKey.code],
      data: jsondata[ApiKey.data],
    );
  }

  ErrorModel(
      {required this.status,
      required this.errorMessage,
      required this.code,
      required this.data});
}
