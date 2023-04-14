import 'package:flutter_rick_and_morty_app/feature/models/character/location.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/origin.dart';

class Character {
  String? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Origin? origin;
  Location? location;
  String? image;
  List<String>? episode;
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
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      type: json['type'],
      gender: json['gender'],
      origin: Origin.fromJson(json['origin']),
      location: Location.fromJson(json['location']),
      image: json['image'],
      episode: json['episode'].cast<String>(),
      url: json['url'],
      created: json['created'],
    );
  }

  static List<Character> getCharactersSnapshot(List snapshot) {
    return snapshot.map((data) => Character.fromJson(data)).toList();
  }
}
