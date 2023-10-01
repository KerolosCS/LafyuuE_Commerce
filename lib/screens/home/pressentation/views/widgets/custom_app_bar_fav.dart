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

import '../../../../../core/utils/styles.dart';

class CustomAppBarForFav extends StatelessWidget {
  const CustomAppBarForFav({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 26),
          child: Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'Favorite Product',
                style: Styles.textStyle20.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 1.5,
          color: const Color(0xffEBF0FF),
        ),
        // const SizedBox(height: 16)
      ],
    );
  }
}
