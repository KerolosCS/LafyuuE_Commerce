import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lafuu_e_commerce/core/utils/app_router.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/cart_view.dart';
import 'package:lafuu_e_commerce/screens/cart/pressentation/views/widgets/cart_view_body.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/home_veiw.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/home_view_body.dart';
import 'package:lafuu_e_commerce/screens/offers_eplore/pressentation/views/explore_view.dart';
import 'package:lafuu_e_commerce/screens/offers_eplore/pressentation/views/widgets/explore_view_body.dart';
import 'package:lafuu_e_commerce/screens/offers_eplore/pressentation/views/widgets/offers_view_body.dart';
import 'package:lafuu_e_commerce/screens/settings/pressentation/views/settings_view.dart';
import 'package:lafuu_e_commerce/screens/settings/pressentation/views/widgets/settings_view_body.dart';

import '../../../../offers_eplore/pressentation/views/offers_view.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

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
  void changeIndexNav(int index, BuildContext context) {
    curIndex = index;
    emit(BottomNavChange());
  }
}
