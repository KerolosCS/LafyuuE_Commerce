// void navigateToHome() {
//   Future.delayed(
//     const Duration(seconds: 3),
//     () {
//       GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
//     },
//   );
// }
import 'package:go_router/go_router.dart';
import 'package:lafuu_e_commerce/screens/Login/pressentation/views/login_view.dart';
import 'package:lafuu_e_commerce/screens/Register/view/register_screen.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/home_veiw.dart';
// import 'package:lafuu_e_commerce/screens/splash_screen.dart';

abstract class AppRouter {
  static const kLogScreen = '/LoginScreen';
  static const kRegScreen = '/RegisterScreen';
  static const kHomeScreen = '/Home';

  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const SplashScreen(),
      // ),
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/LoginScreen',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/Home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/RegisterScreen',
        builder: (context, state) => const RegisterScreen(),
      ),
    ],
  );
}
