import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';

class EpisodeListTile extends StatelessWidget {
  const EpisodeListTile({super.key, required this.episode});

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text(episode.name ?? ''),
        trailing: Text(episode.airDate ?? ''),
        subtitle: Text(episode.episode ?? ''),
      ),
    );
  }
}
