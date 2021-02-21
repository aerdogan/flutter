class Product {
  int id;
  int categoryId;
  String desc;
  String name;
  double price;

  Product(this.id, this.categoryId, this.desc, this.name, this.price);
  Product.fromJson(Map json) {
    id = json["id"];
    categoryId = json["categoryId"];
    name = json["name"];
    desc = json["desc"];
    price = double.tryParse(json["price"].toString());
  }

  Map toJson() {
    return {
      "id": id,
      "categoryId": categoryId,
      "name": name,
      "desc": desc,
      "price": price
    };
  }
}
