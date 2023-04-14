class Origin {
  String? name;
  String? url;

  Origin({
    this.name,
    this.url,
  });

  factory Origin.fromJson(var json) {
    return Origin(
      name: json['name'],
      url: json['url'],
    );
  }
}
