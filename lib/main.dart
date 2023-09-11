import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafuu_e_commerce/core/utils/app_router.dart';

void main(List<String> args) {
  runApp(const LafuuApp());
}

class LafuuApp extends StatelessWidget {
  const LafuuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
