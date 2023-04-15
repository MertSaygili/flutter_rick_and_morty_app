class Episode {
  int? id;
  String? name;
  String? airDate;
  String? episode;
  List<dynamic>? characters;
  String? url;
  String? created;

  Episode({this.id, this.name, this.airDate, this.episode, this.characters, this.url, this.created});

  factory Episode.fromJson(var json) {
    return Episode(
      id: json['id'],
      name: json['name'],
      airDate: json['air_date'],
      episode: json['episode'],
      characters: json['characters'].cast<String>(),
      url: json['url'],
      created: json['created'],
    );
  }

  static List<Episode> getEpisodesSnapshot(List json) {
    return json.map((e) => Episode.fromJson(e)).toList();
  }
}
