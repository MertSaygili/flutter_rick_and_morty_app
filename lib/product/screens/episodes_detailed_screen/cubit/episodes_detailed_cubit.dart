import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_detailed_screen/service/episodes_detailed_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_detailed_screen/state/episodes_detailed_states.dart';

class EpisodesDetailedCubit extends Cubit<EpisodesDetailedStates> {
  EpisodesDetailedCubit(this.service, this.episode) : super(const InitialEpisodesDetailedState());

  final Episode episode;
  final EpisodesDetailedService service;
  List<Character> characters = [];
  bool fetchCharactersLoading = false;

  void getCharacters() async {
    emit(const LoadingEpisodesDetailedState());
    fetchCharactersLoading = true;

    for (int i = 0; i < episode.characters!.length; i++) {
      // every three times i will emit state to update UI
      if (i % 4 == 0 && i != 0) emit(LoadedEpisodesDetailedState(characters));
      // when i will be equal to length of characters list, i will set fetchCharactersLoading to false to stop loading
      if (i % 7 == 0) fetchCharactersLoading = false;
      characters.add(await service.getCharacter(episode.characters![i]) ?? Character());
    }
    // update UI for last time
    fetchCharactersLoading = false;
    emit(LoadedEpisodesDetailedState(characters));
  }
}
