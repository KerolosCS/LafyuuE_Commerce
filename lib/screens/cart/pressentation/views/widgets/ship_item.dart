import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/core/utils/constant.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';
import 'package:lafuu_e_commerce/core/utils/widgets/custom_btn.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/address_view.dart';

class ShipItem extends StatelessWidget {
  const ShipItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: kSecondearyFontColor.withOpacity(0.35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Priscekila',
            style: Styles.textStyle14,
          ),
          const SizedBox(height: 16),
          Text(
            '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
            style: Styles.textStyle12.copyWith(
              color: kSecondearyFontColor,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '+99 1234567890',
            style: Styles.textStyle12.copyWith(
              color: kSecondearyFontColor,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              SizedBox(
                width: 80,
                child: CustomBtn(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddressView(),
                      ),
                    );
                  },
                  child: const Text('Edit'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_outline,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
