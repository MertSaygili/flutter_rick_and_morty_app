// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_rick_and_morty_app/core/constants/constants.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';

abstract class SearchService {
  Future<List<Character>?> searchCharacter(String query);
}

class SearchServiceImpl extends SearchService {
  @override
  Future<List<Character>?> searchCharacter(String query) async {
    try {
      final response = await Dio().get('${Constants.CHARACTERS_BASE_URL}/?name=$query');
      if (response.statusCode == Constants.ok) {
        if (response.data['error'] == '"There is nothing here"') return null;
        return Character.getCharactersSnapshot(response.data['results']);
      } else {
        print(response.statusCode);
        return null;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
