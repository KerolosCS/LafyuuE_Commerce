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

class TextOnBanner extends StatelessWidget {
  const TextOnBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Super Flash Sale\n50% Off',
              style: Styles.textStyle20.copyWith(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(height: 29),
        Row(
          children: [
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  '08',
                  style: Styles.textStyle16,
                ),
              ),
            ),
            SizedBox(
              width: 12,
              child: Center(
                child: Text(
                  ":",
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  '34',
                  style: Styles.textStyle16,
                ),
              ),
            ),
            SizedBox(
              width: 12,
              child: Center(
                child: Text(
                  ":",
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  '52',
                  style: Styles.textStyle16,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
