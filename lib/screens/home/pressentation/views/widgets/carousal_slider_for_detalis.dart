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

// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/sliderCubit/slider_cubit.dart';
import '../../manager/appCubit/home_cubit.dart';
// import '../manager/cubit/home_cubit.dart';

class CustomSliderForDetails extends StatelessWidget {
  const CustomSliderForDetails({super.key, required this.height, this.images});
  final double height;
  final List<String>? images;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderCubit, SliderState>(
      builder: (context, state) {
        if (state is FetchBannersSuccess) {
          return CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) =>
                  HomeCubit.get(context).slideChange(index),
              viewportFraction: 1,
              height: height * .35,
              enableInfiniteScroll: true,
              autoPlay: false,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayInterval: const Duration(seconds: 3),
            ),
            items: images?.map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return InkWell(
                      onTap: () {},
                      child: CachedNetworkImage(
                        imageUrl: i,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    );
                  },
                );
              },
            ).toList(),
          );
        } else if (state is FetchBannersFail) {
          return const Center(child: Text('Dio Exception'));
        } else {
          return const Center(
              child: Padding(
            padding: EdgeInsets.all(100),
            child: CircularProgressIndicator(),
          ));
        }
      },
    );
  }
}
