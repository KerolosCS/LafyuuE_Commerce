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

//All rights -- Kerolos Fady --Flutter Developer
// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lafuu_e_commerce/screens/Login/pressentation/views/login_view.dart';
import 'package:lafuu_e_commerce/screens/Register/view/register_screen.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/flash_sale_veiw.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/home_veiw.dart';
// import 'package:lafuu_e_commerce/screens/offers_eplore/pressentation/views/explore_view.dart';
// import 'package:lafuu_e_commerce/screens/splash_screen.dart';

abstract class AppRouter {
  static const kLogScreen = '/LoginScreen';
  static const kRegScreen = '/RegisterScreen';
  static const kHomeScreen = '/Home';
  static const kFlashScreen = '/flash';

  static final router = GoRouter(
    //All rights -- Kerolos Fady --Flutter Developer
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const SplashScreen(),
      // ),
      GoRoute(
        path: '/',
        name: 'root',
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: '/LoginScreen',
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: '/Home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/RegisterScreen',
        builder: (context, state) => RegisterScreen(),
      ),
      // GoRoute(
      //   path: '/Flash',
      //   builder: (context, state) => const FlashSaleVeiw(),
      // ),
    ],
  );
}
