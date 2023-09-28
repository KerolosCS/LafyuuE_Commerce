import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';
import 'package:lafuu_e_commerce/screens/home/data/models/product_model.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.api) : super(ProductsInitial());

  static ProductsCubit get(context) => BlocProvider.of(context);
  ApiService api;

  ProductMedel? model;
  List<Product> products = [];
  void getProducts() {
    emit(GetProductsLoading());
    api.get(endPoint: 'products').then(
      (value) {
        model = ProductMedel.fromJson(value);

        print("KERO :: element :: ${value['data']['data']}");
        model?.data?.data?.forEach(
          (element) {
            debugPrint("KERO ::: element :: $element");
            products.add(element);
          },
        );
        // debugPrint('KERO ::: Model :: ${model?.data?.data}');

        debugPrint('KERO PRODUCTS :: $products');
        emit(GetProductsSuccess());
      },
    );
  }
}
