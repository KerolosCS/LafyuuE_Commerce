/*
 *
 * ----------------
 * | 241030072002 |
 * ----------------
 * Copyright © [2023] KERO CS FLUTTER DEVELOPMENT.
 * All Rights Reserved. For inquiries or permissions, contact  me ,
 * https://www.linkedin.com/in/kerolos-fady-software-engineer/
 *
 * /
 */

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';
import 'package:lafuu_e_commerce/screens/home/data/models/product_model.dart';
import 'package:lafuu_e_commerce/screens/home/data/repos/home_repo.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.api) : super(ProductsInitial());

  static ProductsCubit get(context) => BlocProvider.of(context);
  ApiService api;

  ProductMedel? model;
  List<Product> products = [];
  ProductRepo productRepo = ProductRepo();
  void fetchProducts() {
    emit(GetProductsLoading());
    productRepo.getProducts().then(
      (value) {
        model = value;
        model?.data?.data?.forEach(
          (element) {
            products.add(element);
          },
        );
        emit(GetProductsSuccess());
      },
    ).catchError(
      (e) {
        emit(GetProductsFail());
      },
    );
  }
}
