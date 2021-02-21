import 'package:flutter/material.dart';
import 'package:sqlitetest/data/dbhelper.dart';
import 'package:sqlitetest/models/product.dart';

class ProductAdd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductAddState();
  }
}

class ProductAddState extends State {
  var dbHelper = DbHelper();
  var txtName = TextEditingController();
  var txtDesc = TextEditingController();
  var txtPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Ürün Ekle"),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            buildNameField(),
            buildDescField(),
            buildPriceField(),
            buildSaveButton()
          ],
        ),
      ),
    );
  }

  TextField buildNameField() {
    return TextField(
      decoration: InputDecoration(labelText: "Ürün Adı"),
      controller: txtName,
    );
  }

  TextField buildDescField() {
    return TextField(
      decoration: InputDecoration(labelText: "Ürün Tanımı"),
      controller: txtDesc,
    );
  }

  TextField buildPriceField() {
    return TextField(
      decoration: InputDecoration(labelText: "Ürün Fiyatı"),
      controller: txtPrice,
    );
  }

  FlatButton buildSaveButton() {
    return FlatButton(
      child: Text("Ekle"),
      onPressed: () {
        addProduct();
      },
    );
  }

  void addProduct() async {
    var result = await dbHelper.insert(Product(
        name: txtName.text,
        desc: txtDesc.text,
        price: double.tryParse(txtPrice.text)));
    Navigator.pop(context, true);
  }
}
