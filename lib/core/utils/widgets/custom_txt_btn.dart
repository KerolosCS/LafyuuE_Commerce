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

//All rights -- Kerolos Fady --Flutter Developer
class CustomTxtBtn extends StatelessWidget {
  const CustomTxtBtn({super.key, required this.onPress, required this.child});
  final void Function()? onPress;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: const ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
      child: child,
    );
  }
}
