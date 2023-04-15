import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/service/character_detail_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/states/character_detail_states.dart';

import '../../../../feature/models/character/location.dart';

class CharacterDetailCubit extends Cubit<CharacterDetailStates> {
  CharacterDetailCubit(this.service, this.character) : super(const CharacterDetailInitialState());

  final CharacterDetailService service;
  final Character character;

  List<Episode> episodes = [];
  late final Location characterLocation;

  void getEpisodes() async {
    emit(const CharacterDetailLoadingState());
    for (int i = 0; i < character.episode!.length; i++) {
      episodes.add(await service.getEpisodes(character.episode![i]) ?? Episode());
    }
    characterLocation = await service.getLocation(character.location!.url!) ?? Location();
    emit(CharacterDetailLoadedState(episodes));
  }
}
