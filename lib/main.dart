import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';
import 'package:lafuu_e_commerce/core/utils/app_router.dart';
import 'package:lafuu_e_commerce/core/utils/constant.dart';
import 'package:lafuu_e_commerce/screens/home/data/models/product_model.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/appCubit/home_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/products/products_cubit.dart';

import 'core/bloc_opserver.dart';

void main(List<String> args) {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Bloc.observer = MyBlocObserver();
  runApp(const LafuuApp());
}

class LafuuApp extends StatelessWidget {
  const LafuuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(ApiService(Dio())),
        ),
        BlocProvider(
          create: (context) => ProductsCubit(ApiService(Dio()))..getProducts(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.light().copyWith(
          primaryColor: kPrimaryColor,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
