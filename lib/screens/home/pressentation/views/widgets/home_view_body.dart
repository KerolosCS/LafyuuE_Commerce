import 'package:flutter/widgets.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/product_item.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/recommended_banner.dart';
import '../../../../../core/utils/widgets/smoth_indicator.dart';
import '../../manager/cubit/home_cubit.dart';
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
    );
  }
}
