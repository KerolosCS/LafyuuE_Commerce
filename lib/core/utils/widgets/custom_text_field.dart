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
    this.preIcon,
    this.width,
    this.height,
    this.valid,
    this.cont,
    this.obsec,
    this.suffIcon,
    this.pressSufffix,
    this.suff,
    this.onChange,
  });
  final bool? obsec;
  final void Function()? pressSufffix;
  final String? hintTxt;
  final IconData? preIcon;
  final IconData? suffIcon;
  final double? width;
  final double? height;
  final String? Function(String?)? valid;
  final TextEditingController? cont;
  final Widget? suff;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        onChanged: onChange,
        obscureText: obsec ?? false,
        controller: cont,
        validator: valid,
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(preIcon),
          suffixIcon: suff ??
              IconButton(
                onPressed: pressSufffix,
                icon: Icon(
                  suffIcon,
                ),
              ),
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
