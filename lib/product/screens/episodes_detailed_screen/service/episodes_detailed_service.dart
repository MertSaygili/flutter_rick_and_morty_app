// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';

abstract class EpisodesDetailedService {
  Future<Character?> getCharacter(String url);
}

class EpisodesDetatiledServiceImpl implements EpisodesDetailedService {
  @override
  Future<Character?> getCharacter(String url) async {
    try {
      final response = await Dio().get(url);
      if (response.statusCode == 200) {
        return Character.fromJson(response.data);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
