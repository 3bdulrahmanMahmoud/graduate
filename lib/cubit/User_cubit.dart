// ignore: depend_on_referenced_packages
// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, duplicate_ignore

import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:incubtor/core/api/api_consumer.dart';
import 'package:incubtor/core/api/end_points.dart';
import 'package:incubtor/core/cashe/cashe_helper.dart';
import 'package:incubtor/core/errors/Exeptions.dart';
import 'package:incubtor/models/login_model.dart';
import 'package:incubtor/models/sign_Up_Model.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'User_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final ApiConsumer api;

  LoginCubit(this.api) : super(LoginInitial());

  TextEditingController emailSignUp = TextEditingController();
  TextEditingController passwordSignUp = TextEditingController();
  TextEditingController FirstName = TextEditingController();
  TextEditingController lastName = TextEditingController();

  SignInModel? user;
  signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    try {
      emit(SignInLoading());
      final respose = await api.post(
        EndPoints.signUp,
        isFromData: true,
        data: {
          ApiKey.firstName: firstName,
          ApiKey.lastName: lastName,
          ApiKey.email: email,
          ApiKey.password: password,
        },
      );
      final signUpModel = SignUpModel.fromJson(respose);
      emit(SignUpSuccess(message: signUpModel.status));
    } on serverExeption catch (e) {
      emit(SignUpFailuer(errMessage: e.errorModel.errorMessage));
    }
  }

  signin({required String SignInEmail, required String SignInpassword}) async {
    try {
      emit(SignInLoading());
      final response = await api.post(
        EndPoints.SignIn,
        data: {
          ApiKey.email: SignInEmail,
          ApiKey.password: SignInpassword,
        },
      );
      user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user!.data.token);
      casheHelper().saveData(key: ApiKey.token, value: user!.data.token);
      casheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
      // print(decodedToken);

      emit(SignInSuccess());
    } on serverExeption catch (e) {
      emit(SignInFailuer(errMessage: e.errorModel.errorMessage));
    }
  }
}
