import 'package:flutter/material.dart';

class ImageOfProduct extends StatelessWidget {
  const ImageOfProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/image Product.png',
      width: 75,
    );
  }
}
