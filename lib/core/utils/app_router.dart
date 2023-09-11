// void navigateToHome() {
//   Future.delayed(
//     const Duration(seconds: 3),
//     () {
//       GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
//     },
//   );
// }
import 'package:go_router/go_router.dart';
import 'package:lafuu_e_commerce/screens/Login/login_screen.dart';
import 'package:lafuu_e_commerce/screens/Register/register_screen.dart';
import 'package:lafuu_e_commerce/screens/splash_screen.dart';

abstract class AppRouter {
  static const kLogScreen = '/LoginScreen';
  static const kRegScreen = '/RegisterScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/LoginScreen',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/RegisterScreen',
        builder: (context, state) => const RegisterScreen(),
      ),
    ],
  );
}
