class Product {
  int id;
  String name;
  String desc;
  double price;

  Product({this.name, this.desc, this.price});
  Product.withId({this.id, this.name, this.desc, this.price});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["name"] = name;
    map["desc"] = desc;
    map["price"] = price;
    if (id != null) {
      map["id"] = id;
    }
    return map;
  }

  Product.fromObject(dynamic o) {
    this.id = o["id"];
    this.name = o["name"];
    this.desc = o["desc"];
    this.price = double.tryParse(o["price"].toString());
  }
}
