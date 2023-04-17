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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i9;

import '../../feature/models/character/character.dart' as _i10;
import '../../feature/models/episodes/episode.dart' as _i11;
import '../../product/navigation_bar/bottom_navigation_bar.dart'
    deferred as _i1;
import '../../product/screens/character_detailed_screen/view/character_detail_screen.dart'
    as _i4;
import '../../product/screens/episodes_detailed_screen/view/episodes_detailed_screen.dart'
    as _i5;
import '../../product/screens/episodes_screen/view/episodes_screen.dart' as _i6;
import '../../product/screens/home_screen/view/home_screen.dart' as _i3;
import '../../product/screens/search_screen/view/search_screen.dart' as _i7;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    BottomNavigator.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.BottomNavigator(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    EpisodesRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    CharecterDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CharecterDetailRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.CharacterDetailScreen(
          key: args.key,
          character: args.character,
        ),
      );
    },
    EpisodesDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<EpisodesDetailedRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.EpisodesDetailedScreen(
          key: args.key,
          episode: args.episode,
        ),
      );
    },
    EpisodesScreenRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.EpisodesScreen(),
      );
    },
    SearchScreenRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SearchScreen(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          BottomNavigator.name,
          path: '/',
          deferredLoading: true,
          children: [
            _i8.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: BottomNavigator.name,
              children: [
                _i8.RouteConfig(
                  HomeScreenRoute.name,
                  path: '',
                  parent: HomeRoute.name,
                ),
                _i8.RouteConfig(
                  CharecterDetailRoute.name,
                  path: 'characterDetail',
                  parent: HomeRoute.name,
                ),
                _i8.RouteConfig(
                  EpisodesDetailedRoute.name,
                  path: 'episodesDetailed',
                  parent: HomeRoute.name,
                ),
              ],
            ),
            _i8.RouteConfig(
              EpisodesRoute.name,
              path: 'episodes',
              parent: BottomNavigator.name,
              children: [
                _i8.RouteConfig(
                  EpisodesScreenRoute.name,
                  path: '',
                  parent: EpisodesRoute.name,
                ),
                _i8.RouteConfig(
                  EpisodesDetailedRoute.name,
                  path: 'episodesDetailed',
                  parent: EpisodesRoute.name,
                ),
              ],
            ),
            _i8.RouteConfig(
              SearchRoute.name,
              path: 'search',
              parent: BottomNavigator.name,
              children: [
                _i8.RouteConfig(
                  SearchScreenRoute.name,
                  path: '',
                  parent: SearchRoute.name,
                ),
                _i8.RouteConfig(
                  CharecterDetailRoute.name,
                  path: 'characterDetail',
                  parent: SearchRoute.name,
                ),
                _i8.RouteConfig(
                  EpisodesDetailedRoute.name,
                  path: 'episodesDetailed',
                  parent: SearchRoute.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.BottomNavigator]
class BottomNavigator extends _i8.PageRouteInfo<void> {
  const BottomNavigator({List<_i8.PageRouteInfo>? children})
      : super(
          BottomNavigator.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomNavigator';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class EpisodesRoute extends _i8.PageRouteInfo<void> {
  const EpisodesRoute({List<_i8.PageRouteInfo>? children})
      : super(
          EpisodesRoute.name,
          path: 'episodes',
          initialChildren: children,
        );

  static const String name = 'EpisodesRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          path: 'search',
          initialChildren: children,
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i8.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.CharacterDetailScreen]
class CharecterDetailRoute extends _i8.PageRouteInfo<CharecterDetailRouteArgs> {
  CharecterDetailRoute({
    _i9.Key? key,
    required _i10.Character character,
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

  final _i9.Key? key;

  final _i10.Character character;

  @override
  String toString() {
    return 'CharecterDetailRouteArgs{key: $key, character: $character}';
  }
}

/// generated route for
/// [_i5.EpisodesDetailedScreen]
class EpisodesDetailedRoute
    extends _i8.PageRouteInfo<EpisodesDetailedRouteArgs> {
  EpisodesDetailedRoute({
    _i9.Key? key,
    required _i11.Episode episode,
  }) : super(
          EpisodesDetailedRoute.name,
          path: 'episodesDetailed',
          args: EpisodesDetailedRouteArgs(
            key: key,
            episode: episode,
          ),
        );

  static const String name = 'EpisodesDetailedRoute';
}

class EpisodesDetailedRouteArgs {
  const EpisodesDetailedRouteArgs({
    this.key,
    required this.episode,
  });

  final _i9.Key? key;

  final _i11.Episode episode;

  @override
  String toString() {
    return 'EpisodesDetailedRouteArgs{key: $key, episode: $episode}';
  }
}

/// generated route for
/// [_i6.EpisodesScreen]
class EpisodesScreenRoute extends _i8.PageRouteInfo<void> {
  const EpisodesScreenRoute()
      : super(
          EpisodesScreenRoute.name,
          path: '',
        );

  static const String name = 'EpisodesScreenRoute';
}

/// generated route for
/// [_i7.SearchScreen]
class SearchScreenRoute extends _i8.PageRouteInfo<void> {
  const SearchScreenRoute()
      : super(
          SearchScreenRoute.name,
          path: '',
        );

  static const String name = 'SearchScreenRoute';
}
