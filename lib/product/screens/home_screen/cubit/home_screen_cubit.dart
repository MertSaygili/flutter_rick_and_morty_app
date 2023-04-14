import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';
import 'package:flutter_rick_and_morty_app/feature/models/location/location.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/service/home_screen_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/states/home_screen_states.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenCubit extends Cubit<HomeScreenStates> {
  HomeScreenCubit(this.service) : super(const HomeScreenInitialState());

  final HomeScreenService service;
  String errorMessage = 'No Character Found!';
  String locationName = 'Earth (C-137)';

  List<Location> locations = [];
  List<Location> filteredLocation = [];
  List<Character> characters = [];
  bool fetchCharactersLoading = false;
  int locationPage = 1;
  bool locationPageLimit = false;

  void getLocations() async {
    emit(const HomeScreenLoadingState());
    // get all locations
    locations = await service.getAllLocations(locationPage++) ?? [];
    // get filtered location by name
    filteredLocation = await service.getCharacterFilteredByLocation(locationName) ?? [];
    emit(HomeScreenLoadedState(locations, filteredLocation, characters, fetchCharactersLoading, locationName));
    _getFilteredLocationCharacters(locationName);
  }

  void getMoreLocations() async {
    List<Location> newLocation = await service.getAllLocations(locationPage++) ?? [];
    if (newLocation.length < 20 || newLocation.isEmpty) locationPageLimit = true;
    locations.addAll(newLocation);
    emit(HomeScreenLoadedState(locations, filteredLocation, characters, fetchCharactersLoading, locationName));
  }

  void changeFilteredLocation(String locationName) async {
    // get filtered location by name
    filteredLocation = await service.getCharacterFilteredByLocation(locationName) ?? [];
    // get characters by filtered location
    _getFilteredLocationCharacters(locationName);
  }

  void _getFilteredLocationCharacters(String locationName) async {
    // set variables to default
    fetchCharactersLoading = true;
    characters = [];

    emit(HomeScreenLoadedState(locations, filteredLocation, characters, fetchCharactersLoading, locationName));
    for (int i = 0; i < filteredLocation[0].residents!.length; i++) {
      characters.add(await service.getCharacterById(filteredLocation[0].residents![i]) ?? Character());
      // every three times i will emit state to update UI
      if (i % 3 == 0 && i != 0) emit(HomeScreenLoadedState(locations, filteredLocation, characters, fetchCharactersLoading, locationName));
      // when i will be equal to length of residents list, i will set fetchCharactersLoading to false to stop loading
      if (i % 7 == 0) fetchCharactersLoading = false;
    }
    // emit state to update UI
    emit(HomeScreenLoadedState(locations, filteredLocation, characters, false, locationName));
  }
}
