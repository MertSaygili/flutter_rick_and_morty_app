import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/service/episodes_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/states/episodes_states.dart';

class EpisodeCubit extends Cubit<EpisodeStates> {
  EpisodeCubit(this.episodeService) : super(const EpisodesInitialState());

  final EpisodeService episodeService;
  List<Episode> episodes = [];
  List<Episode> searchEpisodesList = [];
  bool isLastPage = false;
  int page = 1;

  void getEpisodes(int page) async {
    emit(const EpisodesLoadingState());
    episodes.addAll(await episodeService.getEpisodes(page++) ?? []);
    emit(EpisodesLoadedState(episodes));
  }

  void getMoreEpisodes() async {
    List<Episode> newEpisodes = await episodeService.getEpisodes(page++) ?? [];
    if (newEpisodes.length < 20 || newEpisodes.isEmpty) isLastPage = true;
    episodes.addAll(newEpisodes);
    emit(EpisodesLoadedState(episodes));
  }

  void searchEpisodes(String query) async {
    if (query.isEmpty) emit(EpisodesLoadedState(episodes));
    if (query.length % 2 == 0) {
      page = 1;
      searchEpisodesList = [];
      searchEpisodesList = await episodeService.searchEpisodes(query) ?? [];
      emit(EpisodesLoadedState(searchEpisodesList));
    }
  }

  void setSearchText(String queryText) {
    searchEpisodes(queryText);
  }
}
