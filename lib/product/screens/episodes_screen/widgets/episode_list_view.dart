import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/feature/components/cards/episodes_undetail_card.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';

class EpisodeListview extends StatelessWidget {
  const EpisodeListview({super.key, required this.episodes});

  final List<Episode> episodes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: episodes.length,
      itemBuilder: (context, index) {
        return EpisodeUndetailCard(episode: episodes[index]);
      },
    );
  }
}
