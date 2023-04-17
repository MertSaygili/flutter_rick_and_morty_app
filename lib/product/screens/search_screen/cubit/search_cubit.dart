import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';
import 'package:flutter_rick_and_morty_app/product/screens/search_screen/service/search_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/search_screen/state/search_states.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit(this.service) : super(const InitialSearchState());

  final SearchService service;
  String errorMessage = 'No movies found!';
  String searchText = '';
  List<Character> characters = [];

  void _searchCharacters(String query) async {
    if (searchText.isEmpty) return;
    emit(const LoadingSearchState());
    characters = await service.searchCharacter(query) ?? [];
    if (characters.isEmpty) {
      emit(ErrorSearchState(errorMessage));
    } else {
      emit(LoadedSearchState(characters));
    }
  }

  void setSearchText(String text) {
    searchText = text;
    _searchCharacters(searchText);
  }
}
