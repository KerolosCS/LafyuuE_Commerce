import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/sliderCubit/slider_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/product_details_body.dart';

import '../../data/models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, this.model});
  final Product? model;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SliderCubit(ApiService(Dio()))..getBanners(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: ProductDetailsBody(model: model),
        ),
      ),
    );
  }
}
