import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/product_item.dart';

class ForSaleProductsListview extends StatelessWidget {
  const ForSaleProductsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ProductItem(),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: 10,
      ),
    );
  }
}
