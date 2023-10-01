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

//Kerolos Fady --Flutter Developer

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../constant.dart';

// ignore: must_be_immutable
class SmoothIndicatorr extends StatelessWidget {
  SmoothIndicatorr({
    super.key,
    this.active,
    this.count,
  });
  int? active;
  int? count;
  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      //All rights -- Kerolos Fady --Flutter Developer
      count: count ?? 0,
      activeIndex: active ?? 0,
      effect: const JumpingDotEffect(
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: kPrimaryColor,
      ),
    );
  }
}
