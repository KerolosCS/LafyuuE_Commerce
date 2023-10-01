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

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';

import '../../../data/models/banner_models.dart';

part 'slider_state.dart';

class SliderCubit extends Cubit<SliderState> {
  SliderCubit(this.api) : super(SliderInitial());
  static SliderCubit get(context) => BlocProvider.of(context);

  ApiService api;
  BannerModel? banners;
  List<String?> imagesBanners = [];
  void getBanners() {
    emit(FetchBannersLoading());
    api.get(endPoint: 'banners').then((value) {
      banners = BannerModel.fromJson(value);
      banners?.data?.forEach(
        (element) {
          imagesBanners.add(element.image);
        },
      );
      debugPrint('KERO :: $imagesBanners');
      emit(FetchBannersSuccess());
    }).catchError(
      (e) {
        emit(FetchBannersFail(e.toString()));
        debugPrint(e.toString());
      },
    );
  }
}
