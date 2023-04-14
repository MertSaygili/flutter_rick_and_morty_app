import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/components/cards/locations_small_card.dart';
import 'package:flutter_rick_and_morty_app/feature/models/location/location.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/cubit/home_screen_cubit.dart';

class LocationsHorizontalListView extends StatelessWidget {
  const LocationsHorizontalListView({super.key, required this.locations});

  final List<Location> locations;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: locations.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => context.read<HomeScreenCubit>().changeFilteredLocation(locations[index].name!),
          child: LocationSmallCard(location: locations[index]),
        );
      },
    );
  }
}
