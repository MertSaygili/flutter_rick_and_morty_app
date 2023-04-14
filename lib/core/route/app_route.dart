import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/home_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    // AutoRoute(page: SplashScreen, name: 'SplashScreenRoute', path: 'SplashScreenRot'),
    AutoRoute(page: HomeScreen, name: 'HomeScreenRoute', path: 'HomeScreenRot', initial: true),
  ],
)
class $AppRouter {}
