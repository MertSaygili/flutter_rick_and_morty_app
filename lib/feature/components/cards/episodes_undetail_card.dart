import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/sizes.dart';

class EpisodeUndetailCard extends StatelessWidget {
  const EpisodeUndetailCard({super.key, required this.episode});

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes().undetailEpisodeCardHeight,
      child: const Card(
        color: Colors.red,
      ),
    );
  }
}
