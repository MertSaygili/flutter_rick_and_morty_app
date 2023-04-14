import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/components/cards/locations_small_card.dart';
import 'package:flutter_rick_and_morty_app/feature/models/location/location.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/cubit/home_screen_cubit.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/states/home_screen_states.dart';

class LocationsHorizontalListView extends StatelessWidget {
  const LocationsHorizontalListView({super.key, required this.locations, required this.state});

  final List<Location> locations;
  final HomeScreenLoadedState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: locations.length + 1,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        if (index == (state.locations.length) && context.read<HomeScreenCubit>().locationPageLimit) return null;
        if (index == (state.locations.length)) {
          context.read<HomeScreenCubit>().getMoreLocations();
          return context.read<HomeScreenCubit>().locationPageLimit == true ? const SizedBox() : const Center(child: CircularProgressIndicator());
        } else {
          return InkWell(
            onTap: () => context.read<HomeScreenCubit>().changeFilteredLocation(locations[index].name!),
            child: LocationSmallCard(location: locations[index]),
          );
        }
      },
    );
  }
}
