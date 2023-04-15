import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/feature/components/cards/episodes_small_card.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/sizes.dart';

class EpisodesListView extends StatelessWidget {
  const EpisodesListView({super.key, required this.episodes});

  final List<Episode> episodes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: Sizes().smallLocationCardHeight,
      child: ListView.builder(
        itemCount: episodes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => EpisodeSmallCard(episode: episodes[index]),
      ),
    );
  }
}
