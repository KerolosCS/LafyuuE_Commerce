import 'package:dio/dio.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';
import 'package:lafuu_e_commerce/screens/home/data/models/category_model.dart';
import 'package:lafuu_e_commerce/screens/home/data/models/product_model.dart';

class ProductRepo {
  ApiService api = ApiService(Dio());
  Future<ProductMedel> getProducts() async {
    var res = await api.get(endPoint: 'products');
    return ProductMedel.fromJson(res);
  }
}


class CategoryRepo {
  ApiService api = ApiService(Dio());
  Future<CategoriesModel> getCategories() async {
    var res = await api.get(endPoint: 'categories');
    return CategoriesModel.fromJson(res);
  }
}
