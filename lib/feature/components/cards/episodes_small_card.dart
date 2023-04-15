import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/core/extensions/string_extension.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/padding.dart';

class EpisodeSmallCard extends StatelessWidget {
  const EpisodeSmallCard({super.key, required this.episode});
  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: CustomPaddings().paddingNormal,
        child: Center(
          child: Text(episode.episode!.setEpisodeNumber(), style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis),
        ),
      ),
    );
  }
}
