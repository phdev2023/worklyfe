import 'package:Worklyfe/presentation/screens/dashboard_screen.dart';
import 'package:Worklyfe/presentation/screens/login/login_screen.dart';
import 'package:Worklyfe/presentation/screens/login/signup_screen.dart';
import 'package:Worklyfe/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

import 'app_route_constants.dart';

class MyAppRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.homeRouteName,
        path: '/dashboard',
        builder: (context, state) {
          return const DashBoardScreen();
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.loginRouterName,
        path: '/login',
        builder: (context, state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.signupRouterName,
        path: '/signup',
        builder: (context, state) {
          return const SignupScreen();
        },
      ),
    ],
    // errorPageBuilder: (context, state) {
    //   return MaterialPage(child: ErrorPage());
    // },
    redirect: (context, state) {
      return null;

      // if (!isAuth &&
      //     state.location
      //         .startsWith('/${MyAppRouteConstants.profileRouteName}')) {
      //   return context.namedLocation(MyAppRouteConstants.contactUsRouteName);
      // } else {
      //   return null;
      // }
    },
  );
}
