import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/core/extensions/string_extension.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';

class EpisodeListTile extends StatelessWidget {
  const EpisodeListTile({super.key, required this.episode});

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: ListTile(
          title: Text(episode.name ?? '', style: Theme.of(context).textTheme.headlineMedium),
          trailing: Text(episode.airDate ?? '', style: Theme.of(context).textTheme.bodyMedium),
          subtitle: Text(episode.episode?.setEpisodeNumber() ?? '', style: Theme.of(context).textTheme.bodyMedium),
        ),
      ),
    );
  }
}
