// ignore_for_file: file_names

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
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(i),
                          ),
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
