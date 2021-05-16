class Category {
  int id;
  String desc;
  String name;

  Category(this.id, this.desc, this.name);
  Category.fromJson(Map json) {
    id = json["id"];
    name = json["name"];
    desc = json["desc"];
  }

  Map toJson() {
    return {"id": id, "name": name, "desc": desc};
  }
}
