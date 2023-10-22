import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';

class CustomAppBarToCart extends StatelessWidget {
  const CustomAppBarToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Text(
                'Your Cart',
                style: Styles.textStyle16,
              ),
            ),
          ],
        ),
        Divider(
          height: 2,
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
