import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';

abstract class EpisodeStates {
  const EpisodeStates();
}

class EpisodesInitialState extends EpisodeStates {
  const EpisodesInitialState();
}

class EpisodesLoadingState extends EpisodeStates {
  const EpisodesLoadingState();
}

class EpisodesLoadedState extends EpisodeStates {
  const EpisodesLoadedState(this.episodes);
  final List<Episode> episodes;
}
