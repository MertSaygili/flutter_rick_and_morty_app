// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_rick_and_morty_app/core/constants/constants.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';
import 'package:flutter_rick_and_morty_app/feature/models/location/location.dart';

abstract class HomeScreenService {
  Future<List<Location>?> getAllLocations();
  Future<List<Location>?> getCharacterFilteredByLocation(String locationName);
  Future<Character?> getCharacterById(String urlId);
}

class HomeScreenServiceImpl implements HomeScreenService {
  @override
  Future<List<Location>?> getAllLocations() async {
    try {
      var response = await Dio().get(Constants.LOCATION_BASE_URL);
      if (response.statusCode == Constants.ok) {
        List<Location> locations = Location.getLocationsSnapshot(response.data['results']);
        return locations;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }

    return null;
  }

  @override
  Future<List<Location>?> getCharacterFilteredByLocation(String locationName) async {
    try {
      var response = await Dio().get('${Constants.LOCATION_BASE_URL}/?name=$locationName');
      if (response.statusCode == Constants.ok) {
        List<Location> location = Location.getLocationsSnapshot(response.data['results']);
        return location;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }

    return null;
  }

  @override
  Future<Character?> getCharacterById(String urlId) async {
    print(urlId);
    var response = await Dio().get(urlId);
    if (response.statusCode == Constants.ok) {
      Character character = Character.fromJson(response.data);
      return character;
    } else {
      print(response.statusCode);
    }

    return null;
  }
}
