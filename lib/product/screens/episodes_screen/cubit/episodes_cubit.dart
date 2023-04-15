import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/service/episodes_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/states/episodes_states.dart';

class EpisodeCubit extends Cubit<EpisodeStates> {
  EpisodeCubit(this.episodeService) : super(const EpisodesInitialState());

  final EpisodeService episodeService;
  List<Episode> episodes = [];
  String searchText = '';
  bool isLastPage = false;
  int page = 1;

  void getEpisodes(int page) async {
    emit(const EpisodesLoadingState());
    episodes = await episodeService.getEpisodes(page++) ?? [];
    emit(EpisodesLoadedState(episodes));
  }

  void setSearchText(String newText) {
    searchText = newText;
    emit(EpisodesLoadedState(episodes));
  }
}
