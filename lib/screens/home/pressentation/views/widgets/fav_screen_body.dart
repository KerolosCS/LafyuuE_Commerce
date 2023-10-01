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
import 'package:lafuu_e_commerce/core/utils/widgets/products_grid_view.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/custom_app_bar_fav.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/fav_product_item.dart';

class FavouriteScreenBody extends StatelessWidget {
  const FavouriteScreenBody({super.key});

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
                const CustomAppBarForFav(),
                const SizedBox(height: 16),
                ProductsGridView(item: FavProductItem()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
