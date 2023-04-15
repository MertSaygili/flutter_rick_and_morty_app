import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';

abstract class CharacterDetailStates {
  const CharacterDetailStates();
}

class CharacterDetailInitialState extends CharacterDetailStates {
  const CharacterDetailInitialState();
}

class CharacterDetailLoadingState extends CharacterDetailStates {
  const CharacterDetailLoadingState();
}

class CharacterDetailLoadedState extends CharacterDetailStates {
  final List<Episode> episodes;
  const CharacterDetailLoadedState(this.episodes);
}
