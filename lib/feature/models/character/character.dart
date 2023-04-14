import 'package:flutter_rick_and_morty_app/feature/models/character/location.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/origin.dart';

class Character {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Origin? origin;
  Location? location;
  String? image;
  List<dynamic>? episode;
  String? url;
  String? created;

  Character({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  factory Character.fromJson(var json) {
    return Character(
      id: json['id'] as int?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      species: json['species'] as String?,
      type: json['type'] as String?,
      gender: json['gender'] as String?,
      origin: Origin.fromJson(json['origin']),
      location: Location.fromJson(json['location']),
      image: json['image'] as String?,
      episode: json['episode'] as List<dynamic>?,
      url: json['url'] as String?,
      created: json['created'] as String?,
    );
  }

  static List<Character> getCharactersSnapshot(List snapshot) {
    return snapshot.map((data) => Character.fromJson(data)).toList();
  }
}
