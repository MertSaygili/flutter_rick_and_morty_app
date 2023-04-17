import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/service/episodes_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/states/episodes_states.dart';

class EpisodeCubit extends Cubit<EpisodeStates> {
  EpisodeCubit(this.episodeService) : super(const EpisodesInitialState());

  final EpisodeService episodeService;
  List<Episode> episodes = [];
  List<Episode> searchEpisodesList = [];
  String searchText = '';
  bool isLastPage = false;
  int _page = 1;

  void getEpisodes(int page) async {
    emit(const EpisodesLoadingState());
    episodes.addAll(await episodeService.getEpisodes(page++) ?? []);
    emit(EpisodesLoadedState(episodes));
  }

  void getMoreEpisodes() async {
    List<Episode> newEpisodes = await episodeService.getEpisodes(_page++) ?? [];
    if (newEpisodes.length < 20 || newEpisodes.isEmpty) isLastPage = true;
    episodes.addAll(newEpisodes);
    emit(EpisodesLoadedState(episodes));
  }

  void _searchEpisodes(String query) async {
    if (query.isEmpty) emit(EpisodesLoadedState(episodes));
    if (query.length % 2 == 0) {
      searchEpisodesList = await episodeService.searchEpisodes(query) ?? [];
      emit(EpisodesLoadedState(searchEpisodesList));
    }
  }

  void setSearchText(String queryText) {
    searchText = queryText;
    _searchEpisodes(searchText);
  }
}
