// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_rick_and_morty_app/core/constants/constants.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';

import '../../../../feature/models/character/location.dart';

abstract class CharacterDetailService {
  Future<Episode?> getEpisodes(String path);
  Future<Location?> getLocation(String path);
}

class CharacterDetailServiceImpl extends CharacterDetailService {
  @override
  Future<Episode?> getEpisodes(String path) async {
    try {
      var response = await Dio().get(path);
      if (response.statusCode == Constants.ok) {
        return Episode.fromJson(response.data);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Future<Location?> getLocation(String path) async {
    try {
      var response = await Dio().get(path);
      if (response.statusCode == Constants.ok) {
        return Location.fromJson(response.data);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
