import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/core/utils/constant.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey[300] ?? Colors.amber,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Items (3)',
                style: Styles.textStyle12.copyWith(
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              const Text(
                '\$598.86',
                style: Styles.textStyle12,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Shipping',
                style: Styles.textStyle12.copyWith(
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              const Text('\$40.00', style: Styles.textStyle12),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Import charges',
                style: Styles.textStyle12.copyWith(
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              const Text('\$128.00', style: Styles.textStyle12),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Total Price',
                style: Styles.textStyle12.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Text(
                '\$766.86',
                style: Styles.textStyle12.copyWith(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
