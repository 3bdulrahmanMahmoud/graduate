part of 'User_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class SignInSuccess extends LoginState {}

final class SignInLoading extends LoginState {}

final class SignInFailuer extends LoginState {
  final String errMessage;

  SignInFailuer({required this.errMessage});
}

final class SignUpInitial extends LoginState {}

final class SignUpSuccess extends LoginState {
  final String message;

  SignUpSuccess({required this.message});
}

final class SignUpLoading extends LoginState {}

final class SignUpFailuer extends LoginState {
  final String errMessage;

  SignUpFailuer({required this.errMessage});
}


final class SignoutInitial extends LoginState {}

final class SignOutSuccess extends LoginState {}
final class SignOutLoading extends LoginState {}
final class SignOutFailuer extends LoginState {
  final String errMessage;

  SignOutFailuer({required this.errMessage});
}