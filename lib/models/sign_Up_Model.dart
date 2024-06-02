// ignore_for_file: file_names

class SignUpModel {
  final String status;
  final DataModel data;

  SignUpModel({required this.status, required this.data});
  factory SignUpModel.fromJson(Map<String, dynamic> jsonData) {
    return SignUpModel(
      status: jsonData['status'],
      data: DataModel.fromJson(jsonData['data']),
    );
  }
}

class DataModel {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String role;
  final String avatar;
  final String id;
  final String token;
  final num v;

  DataModel(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.role,
      required this.avatar,
      required this.id,
      required this.token,
      required this.v});
  factory DataModel.fromJson(Map<String, dynamic> jsondata) {
    return DataModel(
        firstName: jsondata['user']['firstName'],
        lastName: jsondata['user']['lastName'],
        email: jsondata['user']['email'],
        password: jsondata['user']['password'],
        role: jsondata['user']['role'],
        avatar: jsondata['user']['avatar'],
        id: jsondata['user']['_id'],
        token: jsondata['user']['token'],
        v: jsondata['user']['__v']);
  }
}
