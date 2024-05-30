class DataModel {
  final String token;

  DataModel({required this.token});
  factory DataModel.fromJson(Map<String, dynamic> jsondata) {
    return DataModel(token: jsondata['token']);
  }
}
class SignInModel {
  final String status;
  final DataModel data;

  SignInModel({required this.status, required this.data});
  factory SignInModel.fromJson(Map<String, dynamic> jsondata) {
    return SignInModel(status: jsondata['status'], data: jsondata['data']);
  }
}

