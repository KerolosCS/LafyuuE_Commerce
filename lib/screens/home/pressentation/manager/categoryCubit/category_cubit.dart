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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';
import 'package:lafuu_e_commerce/screens/home/data/repos/home_repo.dart';

import '../../../data/models/category_model.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.api) : super(CategoryInitial());
  static CategoryCubit get(context) => BlocProvider.of(context);
  ApiService api;

  CategoriesModel? cat;
  List<DataOfCategory> cats = [];
  CategoryRepo catRepo = CategoryRepo();
  void fetchCategories() {
    emit(FetchCategoryLoading());
    catRepo.getCategories().then((value) {
      cat = value;
      cat?.data?.data?.forEach((element) {
        cats.add(element);
      });

      emit(FetchCategorySuccess());
    }).catchError((e) {
      emit(FetchCategoryFail());
    });
  }
}
