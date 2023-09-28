
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';

import '../../../data/models/category_model.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.api) : super(CategoryInitial());
  static CategoryCubit get(context) => BlocProvider.of(context);
  ApiService api;

  CategoriesModel? cat;
  List<DataOfCategory> cats = [];
  void getCategories() {
    emit(FetchCategoryLoading());
    api.get(endPoint: 'categories').then(
      (value) {
        cat = CategoriesModel.fromJson(value);
        debugPrint('KERO :: ${cat?.data?.data?[0].name}');
        cat?.data?.data?.forEach((element) {
          cats.add(element);
        });
        emit(FetchCategorySuccess());
      },
    ).catchError((e) {
      debugPrint("KERO ERRRORRR ::: ${e.toString()}");
      emit(FetchCategoryFail());
    });
  }
}
