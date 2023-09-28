import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:lafuu_e_commerce/core/utils/app_router.dart';
import 'package:lafuu_e_commerce/core/utils/widgets/recommended_banner.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/sliderCubit/slider_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/products_grid_home.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/text_on_banner.dart';
import '../../../../../core/utils/widgets/smoth_indicator.dart';
import '../../manager/appCubit/home_cubit.dart';
import 'carousal_slider.dart';
import 'category_listview.dart';
import 'custom_appbar.dart';
import 'forsale_listview.dart';
import 'header_section_info.dart';
import 'mega_sale_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
    required this.width,
    required this.height,
  });
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomAppBar(width: width),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomSlider(height: height),
                    HomeCubit.get(context).stackkk == true
                        ? const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: TextOnBanner(),
                          )
                        : const SizedBox(),
                  ],
                ),
                const SizedBox(height: 16),
                SmoothIndicatorr(
                  active: HomeCubit.get(context).activeIndex,
                  count: SliderCubit.get(context).imagesBanners.length,
                ),
                //Category Section
                const SizedBox(height: 24),
                HeaderInfo(
                  l: 'Category',
                  r: 'More Category',
                  tap: () {
                    HomeCubit.get(context).showStack();
                  },
                ),
                const SizedBox(height: 8),
                const CategoryListView(),
                //for sale Section
                const SizedBox(height: 20),
                HeaderInfo(
                  l: 'Flash Sale',
                  r: 'See More',
                  tap: () => GoRouter.of(context).push(AppRouter.kFlashScreen),
                ),
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
                const ProductsGridViewHome(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
