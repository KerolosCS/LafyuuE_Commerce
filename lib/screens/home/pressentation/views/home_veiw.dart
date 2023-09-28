import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/categoryCubit/category_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/appCubit/home_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/sliderCubit/slider_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/home_view_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => SliderCubit(ApiService(Dio()))..getBanners()),
        BlocProvider(
            create: (context) =>
                CategoryCubit(ApiService(Dio()))..getCategories()),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: HomeCubit.get(context).curIndex,
                onTap: (value) {
                  HomeCubit.get(context).changeIndexNav(value);
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search_outlined),
                    label: 'Eplore',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.local_offer_outlined),
                    label: 'Offer',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined),
                    label: 'Account',
                  ),
                ],
              ),
        
        
        
              body: HomeCubit.get(context).curIndex == 0
                  ? HomeViewBody(
                      width: width,
                      height: height,
                    )
                  : HomeCubit.get(context)
                      .screens[HomeCubit.get(context).curIndex],
            ),
          );
        },
      ),
    );
  }
}
