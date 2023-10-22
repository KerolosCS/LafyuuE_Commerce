import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/core/utils/widgets/custom_btn.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/ship_listview.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/ship_to_app_bar.dart';

class ShapeToViewBody extends StatelessWidget {
  const ShapeToViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const CustomAppBarToShape(),
                  const ShipListVeiw(),
                  const SizedBox(height: 16),
                  CustomBtn(onPress: () {}, child: const Text('Next')),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
