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

import '../styles.dart';

class RecommendedBanner extends StatelessWidget {
  const RecommendedBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        InkWell(
          onTap: () {},
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: AspectRatio(
              //width / height
              aspectRatio: 6 / 4,
              child: Image.asset(
                "assets/images/image 51.png",
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recomended\nProduct',
                style: Styles.textStyle30.copyWith(color: Colors.white),
              ),
              Text(
                'We recommend the best for you',
                style: Styles.textStyle12.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
