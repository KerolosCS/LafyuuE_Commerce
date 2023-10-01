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

class SignInWay extends StatelessWidget {
  const SignInWay({super.key, required this.path, required this.txt});
  final String path;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        //All rights -- Kerolos Fady --Flutter Developer
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xffEBF0FF),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(path),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  txt,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff9098B1),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//All rights -- Kerolos Fady --Flutter Developer
