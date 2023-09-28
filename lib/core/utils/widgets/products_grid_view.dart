import 'package:flutter/material.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.item});
  final Widget item;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      childAspectRatio: 1 / 1.5, // width/height
      children: List.generate(
        10,
        (index) => item,
      ),
    );
  }
}
