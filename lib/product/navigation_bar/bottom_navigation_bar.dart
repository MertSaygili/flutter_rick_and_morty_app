import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/core/constants/constants.dart';
import 'package:flutter_rick_and_morty_app/core/route/app_route.gr.dart';
import 'package:flutter_rick_and_morty_app/feature/components/appbar/custom_main_appbar.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/icons.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/sizes.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        HomeRoute(children: [HomeScreenRoute()]),
        EpisodesRoute(children: [EpisodesScreenRoute()]),
        SearchRoute(children: [SearchScreenRoute()]),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).colorScheme.background,
          body: child,
          bottomNavigationBar: _bottomNavigationBar(context),
          appBar: const CustomMainAppbar(),
        );
      },
    );
  }

  BottomNavigationBar _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).colorScheme.primary,
      currentIndex: context.tabsRouter.activeIndex,
      onTap: context.tabsRouter.setActiveIndex,
      elevation: Attributes().mediumElevation,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      unselectedIconTheme: IconThemeData(color: Theme.of(context).disabledColor),
      items: [
        BottomNavigationBarItem(icon: CustomIcons().home, label: '', tooltip: Constants().home),
        BottomNavigationBarItem(icon: CustomIcons().episodes, label: '', tooltip: Constants().episodes),
        BottomNavigationBarItem(icon: CustomIcons().search, label: '', tooltip: Constants().search),
      ],
    );
  }
}
