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

class MegasaleProductsListview extends StatelessWidget {
  const MegasaleProductsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is GetProductsSuccess) {
          return SizedBox(
            height: 230,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ProductItem(
                  product: ProductsCubit.get(context).products[index]),
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemCount: ProductsCubit.get(context).products.length,
            ),
          );
        } else if (state is GetProductsFail) {
          return const Text('ERROORR');
        } else {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(40),
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
