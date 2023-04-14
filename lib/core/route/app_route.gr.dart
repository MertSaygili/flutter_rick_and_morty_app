// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i7;

import '../../product/navigation_bar/bottom_navigation_bar.dart'
    deferred as _i1;
import '../../product/screens/episodes_screen/episodes_screen.dart' as _i4;
import '../../product/screens/home_screen/home_screen.dart' as _i3;
import '../../product/screens/search_screen/search_screen.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    BottomNavigator.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.BottomNavigator(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    EpisodesRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    EpisodesScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EpisodesScreen(),
      );
    },
    SearchScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SearchScreen(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          BottomNavigator.name,
          path: '/',
          deferredLoading: true,
          children: [
            _i6.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: BottomNavigator.name,
              children: [
                _i6.RouteConfig(
                  HomeScreenRoute.name,
                  path: '',
                  parent: HomeRoute.name,
                )
              ],
            ),
            _i6.RouteConfig(
              EpisodesRoute.name,
              path: 'episodes',
              parent: BottomNavigator.name,
              children: [
                _i6.RouteConfig(
                  EpisodesScreenRoute.name,
                  path: '',
                  parent: EpisodesRoute.name,
                )
              ],
            ),
            _i6.RouteConfig(
              SearchRoute.name,
              path: 'search',
              parent: BottomNavigator.name,
              children: [
                _i6.RouteConfig(
                  SearchScreenRoute.name,
                  path: '',
                  parent: SearchRoute.name,
                )
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.BottomNavigator]
class BottomNavigator extends _i6.PageRouteInfo<void> {
  const BottomNavigator({List<_i6.PageRouteInfo>? children})
      : super(
          BottomNavigator.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomNavigator';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class EpisodesRoute extends _i6.PageRouteInfo<void> {
  const EpisodesRoute({List<_i6.PageRouteInfo>? children})
      : super(
          EpisodesRoute.name,
          path: 'episodes',
          initialChildren: children,
        );

  static const String name = 'EpisodesRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SearchRoute extends _i6.PageRouteInfo<void> {
  const SearchRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          path: 'search',
          initialChildren: children,
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.EpisodesScreen]
class EpisodesScreenRoute extends _i6.PageRouteInfo<void> {
  const EpisodesScreenRoute()
      : super(
          EpisodesScreenRoute.name,
          path: '',
        );

  static const String name = 'EpisodesScreenRoute';
}

/// generated route for
/// [_i5.SearchScreen]
class SearchScreenRoute extends _i6.PageRouteInfo<void> {
  const SearchScreenRoute()
      : super(
          SearchScreenRoute.name,
          path: '',
        );

  static const String name = 'SearchScreenRoute';
}
