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
