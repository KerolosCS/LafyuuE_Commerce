import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartViewBody(),
    );
  }
}