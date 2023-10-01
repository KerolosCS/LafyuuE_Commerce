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

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/sliderCubit/slider_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/flash_sale_veiw.dart';
import '../../manager/appCubit/home_cubit.dart';
// import '../manager/cubit/home_cubit.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key, required this.height});
  final double height;
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
              height: height * .29,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayInterval: const Duration(seconds: 3),
            ),
            items: SliderCubit.get(context).imagesBanners.map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return FlashSaleVeiw(
                                imageUrl: i ?? '',
                              );
                            },
                          ),
                        );
                      },
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: i ?? '',
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
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
