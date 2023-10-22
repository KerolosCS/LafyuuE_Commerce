import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/address_data_widget.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/custom_app_bar_edit_address.dart';

class AddressViewBody extends StatelessWidget {
  const AddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBarToEditAddress(),
                  AddressDataWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
