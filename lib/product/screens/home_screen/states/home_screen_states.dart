import 'package:flutter_rick_and_morty_app/feature/models/location/location.dart';

abstract class HomeScreenStates {
  const HomeScreenStates();
}

class HomeScreenInitialState extends HomeScreenStates {
  const HomeScreenInitialState();
}

class HomeScreenLoadingState extends HomeScreenStates {
  const HomeScreenLoadingState();
}

class HomeScreenLoadedState extends HomeScreenStates {
  final List<Location> locations;
  const HomeScreenLoadedState(this.locations);
}
