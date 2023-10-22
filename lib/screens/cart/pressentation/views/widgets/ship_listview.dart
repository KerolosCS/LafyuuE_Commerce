import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/ship_item.dart';

class ShipListVeiw extends StatelessWidget {
  const ShipListVeiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => const ShipItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: 8,
    );
  }
}
