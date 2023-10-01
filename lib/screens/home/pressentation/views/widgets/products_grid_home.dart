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
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/products/products_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/product_item.dart';

class ProductsGridViewHome extends StatelessWidget {
  const ProductsGridViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is GetProductsSuccess) {
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
                  product: ProductsCubit.get(context).products[index]),
            ),
          );
        } else if (state is GetProductsFail) {
          return const Text('Plese Try Again');
        } else {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(50),
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
