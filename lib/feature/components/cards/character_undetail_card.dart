import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/feature/components/cached_network_image/cached_network_image.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/attributes.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/padding.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/sizes.dart';

class CharacterUndetailCard extends StatelessWidget {
  const CharacterUndetailCard({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomPaddings().paddingNormal,
      child: SizedBox(
        height: Sizes().undetailCharacterCardHeight,
        child: Card(elevation: Attributes().mediumElevation, child: Row(children: [_characterImage(), _characterDetail(context)])),
      ),
    );
  }

  Flexible _characterDetail(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: CustomPaddings().paddingNormal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(character.name ?? '', style: Theme.of(context).textTheme.headlineSmall, overflow: TextOverflow.ellipsis),
            ),
            SizedBox(height: Sizes().smallEmptySize),
            Text(character.origin?.name ?? '', style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis),
            // SizedBox(height: Sizes().smallEmptySize),
            // Text('${character.species} - ${character.gender ?? ''}',
            //     style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis, maxLines: 1),
            // SizedBox(height: Sizes().smallEmptySize),
            // Text(character.status ?? '', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }

  ClipRRect _characterImage() {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(Attributes().borderRadius), bottomLeft: Radius.circular(Attributes().borderRadius)),
      child: CustomCachedNetworkImage(imageUrl: character.image ?? ''),
    );
  }
}
