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
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/size_item.dart';

class SizeListView extends StatelessWidget {
  const SizeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const SizeItem(),
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemCount: 16,
      ),
    );
  }
}
