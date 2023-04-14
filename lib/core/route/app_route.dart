import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/product/navigation_bar/bottom_navigation_bar.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/episodes_screen.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/home_screen.dart';
import 'package:flutter_rick_and_morty_app/product/screens/search_screen/search_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: BottomNavigator,
      path: '/',
      deferredLoading: true,
      children: <AutoRoute>[
        AutoRoute(
          page: EmptyRouterPage,
          name: 'HomeRoute',
          path: 'home',
          children: <AutoRoute>[
            AutoRoute(page: HomeScreen, name: 'HomeScreenRoute', path: '', initial: true),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'EpisodesRoute',
          path: 'episodes',
          children: <AutoRoute>[
            AutoRoute(page: EpisodesScreen, name: 'EpisodesScreenRoute', path: '', initial: true),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'SearchRoute',
          path: 'search',
          children: <AutoRoute>[
            AutoRoute(page: SearchScreen, name: 'SearchScreenRoute', path: '', initial: true),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
