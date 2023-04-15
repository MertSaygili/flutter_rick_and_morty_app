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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import '../../feature/models/character/character.dart' as _i9;
import '../../product/navigation_bar/bottom_navigation_bar.dart'
    deferred as _i1;
import '../../product/screens/character_detailed_screen/view/character_detail_screen.dart'
    as _i4;
import '../../product/screens/episodes_screen/view/episodes_screen.dart' as _i5;
import '../../product/screens/home_screen/view/home_screen.dart' as _i3;
import '../../product/screens/search_screen/search_screen.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    BottomNavigator.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.BottomNavigator(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    EpisodesRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    CharecterDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CharecterDetailRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.CharacterDetailScreen(
          key: args.key,
          character: args.character,
        ),
      );
    },
    EpisodesScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EpisodesScreen(),
      );
    },
    SearchScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SearchScreen(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          BottomNavigator.name,
          path: '/',
          deferredLoading: true,
          children: [
            _i7.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: BottomNavigator.name,
              children: [
                _i7.RouteConfig(
                  HomeScreenRoute.name,
                  path: '',
                  parent: HomeRoute.name,
                ),
                _i7.RouteConfig(
                  CharecterDetailRoute.name,
                  path: 'characterDetail',
                  parent: HomeRoute.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              EpisodesRoute.name,
              path: 'episodes',
              parent: BottomNavigator.name,
              children: [
                _i7.RouteConfig(
                  EpisodesScreenRoute.name,
                  path: '',
                  parent: EpisodesRoute.name,
                )
              ],
            ),
            _i7.RouteConfig(
              SearchRoute.name,
              path: 'search',
              parent: BottomNavigator.name,
              children: [
                _i7.RouteConfig(
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
class BottomNavigator extends _i7.PageRouteInfo<void> {
  const BottomNavigator({List<_i7.PageRouteInfo>? children})
      : super(
          BottomNavigator.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomNavigator';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class EpisodesRoute extends _i7.PageRouteInfo<void> {
  const EpisodesRoute({List<_i7.PageRouteInfo>? children})
      : super(
          EpisodesRoute.name,
          path: 'episodes',
          initialChildren: children,
        );

  static const String name = 'EpisodesRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SearchRoute extends _i7.PageRouteInfo<void> {
  const SearchRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          path: 'search',
          initialChildren: children,
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.CharacterDetailScreen]
class CharecterDetailRoute extends _i7.PageRouteInfo<CharecterDetailRouteArgs> {
  CharecterDetailRoute({
    _i8.Key? key,
    required _i9.Character character,
  }) : super(
          CharecterDetailRoute.name,
          path: 'characterDetail',
          args: CharecterDetailRouteArgs(
            key: key,
            character: character,
          ),
        );

  static const String name = 'CharecterDetailRoute';
}

class CharecterDetailRouteArgs {
  const CharecterDetailRouteArgs({
    this.key,
    required this.character,
  });

  final _i8.Key? key;

  final _i9.Character character;

  @override
  String toString() {
    return 'CharecterDetailRouteArgs{key: $key, character: $character}';
  }
}

/// generated route for
/// [_i5.EpisodesScreen]
class EpisodesScreenRoute extends _i7.PageRouteInfo<void> {
  const EpisodesScreenRoute()
      : super(
          EpisodesScreenRoute.name,
          path: '',
        );

  static const String name = 'EpisodesScreenRoute';
}

/// generated route for
/// [_i6.SearchScreen]
class SearchScreenRoute extends _i7.PageRouteInfo<void> {
  const SearchScreenRoute()
      : super(
          SearchScreenRoute.name,
          path: '',
        );

  static const String name = 'SearchScreenRoute';
}
