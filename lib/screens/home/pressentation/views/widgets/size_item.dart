import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SizeItem extends StatelessWidget {
  const SizeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 25,
      backgroundColor: Colors.grey,
      child: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.white,
        child: Text(
          '1',
          style: Styles.textStyle14,
        ),
      ),
    );
  }
}
