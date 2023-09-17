import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';
import '../../manager/cubit/home_cubit.dart';
// import '../manager/cubit/home_cubit.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        onPageChanged: (index, reason) =>
            HomeCubit.get(context).slideChange(index),
        viewportFraction: 1,
        height: height * .32,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayInterval: const Duration(seconds: 3),
      ),
      items: [1, 2, 3, 4, 5].map(
        (i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.sizeOf(context).width,
                // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: Center(
                  child: Text(
                    'text $i',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
              );
            },
          );
        },
      ).toList(),
    );
  }
}
