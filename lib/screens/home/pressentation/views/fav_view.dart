import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/fav_screen_body.dart';

class FavouriteScreenView extends StatelessWidget {
  const FavouriteScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: FavouriteScreenBody(),
      ),
    );
  }
}
