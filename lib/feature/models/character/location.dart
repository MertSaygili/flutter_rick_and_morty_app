class Location {
  String? name;
  String? url;

  Location({
    this.name,
    this.url,
  });

  factory Location.fromJson(var json) {
    return Location(
      name: json['name'],
      url: json['url'],
    );
  }
}
