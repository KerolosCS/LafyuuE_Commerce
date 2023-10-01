/*
 *
 * ----------------
 * | 241030072002 |
 * ----------------
 * Copyright © [2023] KERO CS FLUTTER DEVELOPMENT.
 * All Rights Reserved. For inquiries or permissions, contact  me ,
 * https://www.linkedin.com/in/kerolos-fady-software-engineer/
 *
 * /
 */

part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class SlideChangeState extends HomeState {}

final class BottomNavChange extends HomeState {}

final class ShowStack extends HomeState {}

final class LoginLodinag extends HomeState {}

final class LoginSuccess extends HomeState {}

final class LoginSuccessWrongPass extends HomeState {}

final class LoginFailure extends HomeState {
  final String err;

  LoginFailure(this.err);
}

final class RegisterLodinag extends HomeState {}

final class RegisterSuccess extends HomeState {}

final class RegisterSuccessButWrong extends HomeState {
  final String errMsg;

  RegisterSuccessButWrong(this.errMsg);
}

final class CheckPassword extends HomeState {
  final String errMsg;

  CheckPassword(this.errMsg);
}

final class RegisterFailure extends HomeState {
  final String err;

  RegisterFailure(this.err);
}
