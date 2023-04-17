import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';

abstract class EpisodesDetailedStates {
  const EpisodesDetailedStates();
}

class InitialEpisodesDetailedState extends EpisodesDetailedStates {
  const InitialEpisodesDetailedState();
}

class LoadingEpisodesDetailedState extends EpisodesDetailedStates {
  const LoadingEpisodesDetailedState();
}

class LoadedEpisodesDetailedState extends EpisodesDetailedStates {
  final List<Character> characters;
  const LoadedEpisodesDetailedState(this.characters);
}

class ErrorEpisodesDetailedState extends EpisodesDetailedStates {
  final String errorMessage;
  const ErrorEpisodesDetailedState(this.errorMessage);
}
