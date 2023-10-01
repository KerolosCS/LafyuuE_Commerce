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
class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.item});
  final Widget item;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      childAspectRatio: 1 / 1.5, // width/height
      children: List.generate(
        10,
        (index) => item,
      ),
    );
  }
}
//All rights -- Kerolos Fady --Flutter Developer
