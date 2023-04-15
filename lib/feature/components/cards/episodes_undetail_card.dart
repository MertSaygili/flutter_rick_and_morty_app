import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/core/extensions/string_extension.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/padding.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/sizes.dart';

class EpisodeUndetailCard extends StatelessWidget {
  const EpisodeUndetailCard({super.key, required this.episode});

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomPaddings().marginSmall,
      child: SizedBox(
        height: Sizes().undetailEpisodeCardHeight,
        width: MediaQuery.of(context).size.width,
        child: Card(child: Row(children: [_seasonText(context), _episodeNameDate(context), const Expanded(flex: 5, child: SizedBox())])),
      ),
    );
  }

  Expanded _episodeNameDate(BuildContext context) {
    return Expanded(
      flex: 55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 70,
            child: Align(alignment: Alignment.center, child: Text(episode.name ?? '', style: Theme.of(context).textTheme.bodyMedium)),
          ),
          const Spacer(),
          Expanded(
            flex: 30,
            child: Align(alignment: Alignment.centerRight, child: Text(episode.airDate ?? '', style: Theme.of(context).textTheme.bodySmall)),
          ),
        ],
      ),
    );
  }

  Expanded _seasonText(BuildContext context) {
    return Expanded(
      flex: 40,
      child: Align(
        alignment: Alignment.center,
        child: Text(episode.episode?.setEpisodeNumberJustNumber() ?? '', style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}
