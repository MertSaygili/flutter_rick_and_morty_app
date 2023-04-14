class Location {
  int? id;
  String? name;
  String? type;
  String? dimension;
  List<dynamic>? residents;
  String? url;
  String? created;

  Location({this.id, this.name, this.type, this.dimension, this.residents, this.url, this.created});

  factory Location.fromJson(var json) {
    return Location(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      dimension: json['dimension'] as String?,
      residents: json['residents'] as List<dynamic>?,
      url: json['url'] as String?,
      created: json['created'] as String?,
    );
  }

  static List<Location> getLocationsSnapshot(List snapshot) {
    return snapshot.map((data) => Location.fromJson(data)).toList();
  }
}
