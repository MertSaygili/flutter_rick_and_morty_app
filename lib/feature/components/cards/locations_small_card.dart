import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/feature/models/location/location.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/attributes.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/sizes.dart';

class LocationSmallCard extends StatelessWidget {
  const LocationSmallCard({super.key, required this.location});

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: Sizes().smallLocationCardHeight,
        child: Card(elevation: Attributes().smallElevation, child: _locationNameText(context)),
      ),
    );
  }

  Align _locationNameText(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(Attributes().mediumInsidePadding),
        child: Text(location.name ?? '', textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall),
      ),
    );
  }
}
