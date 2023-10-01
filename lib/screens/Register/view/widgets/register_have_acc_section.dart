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
import 'package:go_router/go_router.dart';
import 'package:lafuu_e_commerce/core/utils/app_router.dart';

import '../../../../core/utils/constant.dart';
// import '../../../core/utils/widgets/another_sign_in.dart';
import '../../../../core/utils/widgets/custom_txt_btn.dart';

class HaveAccountSection extends StatelessWidget {
  const HaveAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const Text(
        //   'OR',
        //   style: TextStyle(
        //     fontSize: 14, //background: #9098B1;
        //     color: Color(0xff9098B1), // #EBF0FF
        //   ),
        // ),
        // const SizedBox(height: 16),
        // const SignInWay(
        //   path: 'assets/images/Google.png',
        //   txt: 'Login With Google ',
        // ),
        // const SizedBox(height: 8),
        // const SignInWay(
        //   path: 'assets/images/Facebook.png',
        //   txt: 'Login with facebook',
        // ),
        // const SizedBox(height: 8),
        // CustomTxtBtn(
        //   onPress: () {},
        //   child: const Text(
        //     'Forgot Password?',
        //     style: TextStyle(
        //       fontSize: 12,
        //       fontWeight: FontWeight.w700,
        //       color: kPrimaryColor,
        //     ),
        //   ),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'have a account?',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff9098B1), //#
              ),
            ),
            CustomTxtBtn(
              onPress: () {
                GoRouter.of(context).pushReplacement(AppRouter.kLogScreen);
              },
              child: const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
