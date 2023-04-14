// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_rick_and_morty_app/core/constants/constants.dart';
import 'package:flutter_rick_and_morty_app/feature/models/location/location.dart';

abstract class HomeScreenService {
  Future<List<Location>?> getAllLocations();
}

class HomeScreenServiceImpl implements HomeScreenService {
  @override
  Future<List<Location>?> getAllLocations() async {
    try {
      var response = await Dio().get(Constants.LOCATION_URL);
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
}
