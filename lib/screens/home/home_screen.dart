// import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:bloc_provider/bloc_provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/core/utils/constant.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';
import 'package:lafuu_e_commerce/screens/home/manager/cubit/home_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/widgets/category_listview.dart';
import 'package:lafuu_e_commerce/screens/home/widgets/custom_appbar.dart';
import '../../core/utils/widgets/smoth_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    CustomAppBar(width: width),
                    CarouselSlider(
                      options: CarouselOptions(
                        onPageChanged: (index, reason) =>
                            HomeCubit.get(context).pageChange(index),
                        viewportFraction: 1,
                        height: height * .3,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayInterval: const Duration(seconds: 2),
                      ),
                      items: [1, 2, 3, 4, 5].map(
                        (i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
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
                    ),
                    const SizedBox(height: 16),

                    SmoothIndicatorr(
                      active: HomeCubit.get(context).activeIndex,
                      count: 5,
                    ),

                    //Category Section
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        const Text(
                          "Category",
                          style: Styles.textStyle14,
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "More Category",
                            style: Styles.textStyle14.copyWith(
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const CategoryListView(),

                    //for sale Section

                    
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
