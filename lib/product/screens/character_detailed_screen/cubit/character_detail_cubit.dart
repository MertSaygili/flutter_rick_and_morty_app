import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/service/character_detail_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/states/character_detail_states.dart';

class CharacterDetailCubit extends Cubit<CharacterDetailStates> {
  CharacterDetailCubit(this._service) : super(const CharacterDetailInitialState());

  final CharacterDetailService _service;
}
