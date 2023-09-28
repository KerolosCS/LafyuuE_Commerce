import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/flash_sale_body.dart';

class FlashSaleVeiw extends StatelessWidget {
  const FlashSaleVeiw({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FlashSaleBody(imageUrl: imageUrl),
      ),
    );
  }
}
