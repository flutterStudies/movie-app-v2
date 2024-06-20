class Actors {
  String image;
  String name;

  Actors({
    required this.image,
    required this.name,
  });

  factory Actors.fromJson(Map<String, dynamic> json) => Actors(
        image: json["image"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
      };
}
