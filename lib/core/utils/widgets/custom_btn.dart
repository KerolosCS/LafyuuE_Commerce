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
import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/core/utils/constant.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.onPress, required this.child});
  final void Function()? onPress;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          // padding: MaterialStatePropertyAll(EdgeInsets.zero),

          backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
        ),
        onPressed: onPress,
        child: child,
      ),
    );
  }
}
