class Character {
  final int id;
  final String name;
  final String status;
  final String gender;
  final String image;
  final String species;

  const Character({
    required this.id,
    required this.name,
    required this.status,
    required this.gender,
    required this.image,
    required this.species,
  });

  Character.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        status = json["status"],
        gender = json["gender"],
        image = json["image"],
        species = json["species"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "status": status,
      "gender": gender,
      "image": image,
      "species": species,
    };
  }

  Character.fromMap(Map<String, dynamic> map)
    : id = map["id"],
      name = map["name"],
      status = map["status"],
      gender = map["gender"],
      image = map["image"],
      species = map["species"];
}
