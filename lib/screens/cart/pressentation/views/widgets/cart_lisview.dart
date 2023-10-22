import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/cart_item.dart';

class CartsListview extends StatelessWidget {
  const CartsListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const CartItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemCount: 8,
    );
  }
}
