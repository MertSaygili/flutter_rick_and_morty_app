// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_rick_and_morty_app/core/constants/constants.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';

abstract class EpisodeService {
  Future<List<Episode>?> getEpisodes(int page);
  Future<List<Episode>?> searchEpisodes(String query);
}

class EpisodeServiceImpl extends EpisodeService {
  @override
  Future<List<Episode>?> getEpisodes(int page) async {
    try {
      var response = await Dio().get('${Constants.EPISODES_BASE_URL}/?page=$page');
      if (response.statusCode == Constants.ok) {
        return Episode.getEpisodesSnapshot(response.data['results']);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Future<List<Episode>?> searchEpisodes(String query) async {
    try {
      var response = await Dio().get('${Constants.EPISODES_BASE_URL}/?name=$query');
      if (response.statusCode == Constants.ok) {
        return Episode.getEpisodesSnapshot(response.data);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
