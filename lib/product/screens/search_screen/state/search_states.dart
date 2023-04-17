import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';

abstract class SearchStates {
  const SearchStates();
}

class InitialSearchState extends SearchStates {
  const InitialSearchState();
}

class LoadingSearchState extends SearchStates {
  const LoadingSearchState();
}

class LoadedSearchState extends SearchStates {
  final List<Character> characters;
  const LoadedSearchState(this.characters);
}

class ErrorSearchState extends SearchStates {
  final String errorMessage;
  const ErrorSearchState(this.errorMessage);
}
