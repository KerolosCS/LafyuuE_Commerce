// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/cart_view_body.dart';
import 'package:lafuu_e_commerce/screens/offers_eplore/pressentation/views/widgets/explore_view_body.dart';
import 'package:lafuu_e_commerce/screens/offers_eplore/pressentation/views/widgets/offers_view_body.dart';
import 'package:lafuu_e_commerce/screens/settings/pressentation/views/widgets/settings_view_body.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.api) : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  ApiService api;

  int activeIndex = 0;
  void slideChange(int index) {
    activeIndex = index;

    emit(SlideChangeState());
  }

  List screens = const [
    Text(''),
    EploreViewbody(),
    CartViewBody(),
    OffersViewbody(),
    SettingsViewBody()
  ];
  int curIndex = 0;
  void changeIndexNav(int index) {
    curIndex = index;
    emit(BottomNavChange());
  }

  bool stackkk = false;
  void showStack() {
    stackkk = !stackkk;
    emit(ShowStack());
  }
}
