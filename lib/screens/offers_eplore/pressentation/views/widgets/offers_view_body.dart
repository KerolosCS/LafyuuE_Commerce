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
import 'package:lafuu_e_commerce/core/utils/constant.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';
import 'package:lafuu_e_commerce/core/utils/widgets/recommended_banner.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/carousal_slider.dart';

class OffersViewbody extends StatelessWidget {
  const OffersViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const OfferTitle(),
            const SizedBox(height: 16),
            OfferWidget(width: width, height: height),
            const SizedBox(height: 16),
            CustomSlider(height: height),
            const SizedBox(height: 8),
            const RecommendedBanner(),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kPrimaryColor,
      ),
      width: width - 32,
      height: height * .125,
      child: Row(
        children: [
          SizedBox(
            width: width * .55,
            child: Text(
              'Use “MEGSL” Cupon For Get 90%off',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle16.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OfferTitle extends StatelessWidget {
  const OfferTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Offer',
                style: Styles.textStyle16,
              ),
            ),
          ],
        ),
        Divider(
          height: 2,
          // color: Colors.amber,
        ),
      ],
    );
  }
}
