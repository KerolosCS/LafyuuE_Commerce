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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';
import 'package:lafuu_e_commerce/core/utils/widgets/products_grid_view.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/appCubit/home_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/products/products_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/flash_sale_banner.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/product_item.dart';

class FlashSaleBody extends StatelessWidget {
  const FlashSaleBody({super.key, required this.imageUrl});
  final String imageUrl;
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
                const CustomAppBarForFlash(),
                FlashSaleBanner(url: imageUrl),
                const ProductsGridViewFlashSale(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductsGridViewFlashSale extends StatelessWidget {
  const ProductsGridViewFlashSale({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          childAspectRatio: 1 / 1.5, // width/height
          children: List.generate(
            ProductsCubit.get(context).products.length,
            (index) => ProductItem(
              product: ProductsCubit.get(context).products[index],
            ),
          ),
        );
      },
    );
  }
}

class CustomAppBarForFlash extends StatelessWidget {
  const CustomAppBarForFlash({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'Super Flash Sale',
                style: Styles.textStyle20.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/Search.png',
                  height: 24,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 1.5,
          color: const Color(0xffEBF0FF),
        ),
        // const SizedBox(height: 16)
      ],
    );
  }
}
