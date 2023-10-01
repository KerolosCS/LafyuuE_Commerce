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

// ignore_for_file: prefer_typing_uninitialized_variables
//All rights -- Kerolos Fady --Flutter Developer
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintTxt,
    required this.preIcon,
    this.width,
    this.height,
    this.valid,
    this.cont,
  });
  final String? hintTxt;
  final IconData preIcon;
  final double? width;
  final double? height;
  final String? Function(String?)? valid;
  final TextEditingController? cont;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        controller: cont,
        validator: valid,
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(preIcon),
          border: const OutlineInputBorder(),
          hintText: hintTxt,
          hintStyle: const TextStyle(
            color: Color(0xff9098B1),
            //#9098B1
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
