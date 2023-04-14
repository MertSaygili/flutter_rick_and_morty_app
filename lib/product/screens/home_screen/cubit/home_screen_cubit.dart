import 'package:flutter_rick_and_morty_app/feature/models/location/location.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/service/home_screen_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/states/home_screen_states.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenCubit extends Cubit<HomeScreenStates> {
  HomeScreenCubit(this.service) : super(const HomeScreenInitialState());

  final HomeScreenService service;
  List<Location> locations = [];

  void getLocations() async {
    emit(const HomeScreenLoadingState());
    locations = await service.getAllLocations() ?? [];
    emit(HomeScreenLoadedState(locations));
  }
}
