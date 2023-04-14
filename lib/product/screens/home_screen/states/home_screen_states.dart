import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';
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
  final List<Location> filteredLocation;
  final List<Character> characters;
  final bool fetchCharactersLoading;
  final String locationName;
  const HomeScreenLoadedState(this.locations, this.filteredLocation, this.characters, this.fetchCharactersLoading, this.locationName);
}

class HomeScreenFilteredMovieLoadingState extends HomeScreenStates {
  const HomeScreenFilteredMovieLoadingState();
}

class HomeScreenErrorState extends HomeScreenStates {
  final String message;
  const HomeScreenErrorState(this.message);
}
