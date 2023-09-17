import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';

class CategryListItem extends StatelessWidget {
  const CategryListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/Product Icon.png',
              height: 70,
              width: 70,
            ),
            const SizedBox(height: 8),
            const Text(
              'Man Shirt',
              style: Styles.textStyle10,
            ),
          ],
        ),
      ),
    );
  }
}
