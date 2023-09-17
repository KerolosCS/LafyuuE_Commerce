import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/home/manager/cubit/home_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/widgets/carousal_slider.dart';
import 'package:lafuu_e_commerce/screens/home/widgets/category_listview.dart';
import 'package:lafuu_e_commerce/screens/home/widgets/custom_appbar.dart';
import 'package:lafuu_e_commerce/screens/home/widgets/forsale_listview.dart';
import 'package:lafuu_e_commerce/screens/home/widgets/header_section_info.dart';
import 'package:lafuu_e_commerce/screens/home/widgets/mega_sale_listview.dart';
import 'package:lafuu_e_commerce/screens/home/widgets/product_item.dart';
import 'package:lafuu_e_commerce/screens/home/widgets/recommended_banner.dart';
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
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          CustomAppBar(width: width),
                          CustomSlider(height: height),
                          const SizedBox(height: 16),
                          SmoothIndicatorr(
                            active: HomeCubit.get(context).activeIndex,
                            count: 5,
                          ),
                          //Category Section
                          const SizedBox(height: 24),
                          const HeaderInfo(l: 'Category', r: 'More Category'),
                          const SizedBox(height: 8),
                          const CategoryListView(),
                          //for sale Section
                          const SizedBox(height: 20),
                          const HeaderInfo(l: 'Flash Sale', r: 'See More'),
                          const SizedBox(height: 12),
                          const ForSaleProductsListview(),
                          const SizedBox(height: 24),
                          //MEga sale section
                          const HeaderInfo(l: 'Mega Sale', r: 'See More'),
                          const SizedBox(height: 12),
                          const MegasaleProductsListview(),
                          //recomended
                          const RecommendedBanner(),
                          const SizedBox(height: 16),

                          GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 1,
                            childAspectRatio: 1 / 1.5, // width/height
                            children: List.generate(
                              10,
                              (index) => const ProductItem(),
                            ),
                          ),
                        ],
                      ),
                    ),
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
