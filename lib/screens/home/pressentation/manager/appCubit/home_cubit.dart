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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/cart_view_body.dart';
import 'package:lafuu_e_commerce/screens/offers_eplore/pressentation/views/widgets/explore_view_body.dart';
import 'package:lafuu_e_commerce/screens/offers_eplore/pressentation/views/widgets/offers_view_body.dart';
import 'package:lafuu_e_commerce/screens/settings/pressentation/views/widgets/settings_view_body.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.api) : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  ApiService api;

  int activeIndex = 0;
  void slideChange(int index) {
    activeIndex = index;

    emit(SlideChangeState());
  }

  List screens = const [
    Text(''),
    EploreViewbody(),
    CartViewBody(),
    OffersViewbody(),
    SettingsViewBody()
  ];
  int curIndex = 0;
  void changeIndexNav(int index) {
    curIndex = index;
    emit(BottomNavChange());
  }

  bool stackkk = false;
  void showStack() {
    stackkk = !stackkk;
    emit(ShowStack());
  }

  void loginAccount(String email, String password) {
    emit(LoginLodinag());
    api.postData(
      'login',
      {
        'email': email,
        'password': password,
      },
    ).then(
      (value) {
        if (value['status'] == true) {
          emit(LoginSuccess());
        } else {
          emit(LoginSuccessWrongPass());
        }
      },
    ).catchError(
      (e) {
        emit(LoginFailure(e.toString()));
      },
    );
  }

  void registerAccount(
    String name,
    String phone,
    String email,
    String password,
    String passwordAgain,
  ) {
    emit(RegisterLodinag());
    if (password == passwordAgain) {
      api.postData(
        'register',
        {
          'name': name,
          'phone': phone,
          'email': email,
          'password': password,
        },
      ).then(
        (value) {
          if (value['status'] == true) {
            emit(RegisterSuccess());
          } else {
            emit(RegisterSuccessButWrong(value['message']));
          }
        },
      ).catchError(
        (e) {
          // print(e.toString());
          emit(RegisterFailure(e.toString()));
        },
      );
    } else {
      emit(CheckPassword('check your Password'));
    }
  }
}
