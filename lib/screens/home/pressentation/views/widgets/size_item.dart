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

import '../../../../../core/utils/styles.dart';

class SizeItem extends StatelessWidget {
  const SizeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 25,
      backgroundColor: Colors.grey,
      child: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.white,
        child: Text(
          '1',
          style: Styles.textStyle14,
        ),
      ),
    );
  }
}
