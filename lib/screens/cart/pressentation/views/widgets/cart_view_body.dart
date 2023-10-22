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
import 'package:lafuu_e_commerce/core/utils/widgets/custom_btn.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/shape_to_view.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/cart_lisview.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/copun_form.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/custom_app_bar_cart_view_body.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/total_price_widget.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

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
                const CustomAppBarToCart(),
                const CartsListview(),
                const SizedBox(height: 30),
                const CopunForm(),
                const SizedBox(height: 16),
                // const Spacer(),
                const TotalPriceWidget(),
                const SizedBox(height: 16),
                CustomBtn(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShapeToView(),
                      ),
                    );
                  },
                  child: const Text('Checkout'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
