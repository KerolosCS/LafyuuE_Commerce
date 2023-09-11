import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintTxt,
    required this.preIcon,
  });
  final String hintTxt;
  final IconData preIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(preIcon),
            border: const OutlineInputBorder(),
            hintText: hintTxt,
            hintStyle: const TextStyle(
              color: Color(0xff9098B1),
              //#9098B1
              fontSize: 12,
            )),
      ),
    );
  }
}
