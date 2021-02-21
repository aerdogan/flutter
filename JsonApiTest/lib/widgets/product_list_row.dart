import 'package:flutter/material.dart';
import 'package:JsonApiTest/models/product.dart';

class ProductListRowWidget extends StatelessWidget {
  Product product;
  ProductListRowWidget(this.product);

  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Container(
              child: Image.network(
                  "https://cdn8.openculture.com/wp-content/uploads/2014/06/free-textbooks1.jpg"),
              height: 130,
              width: MediaQuery.of(context).size.width / 2,
            ),
            Text(product.name),
            Text(
              product.price.toString() + " TL",
              style: TextStyle(fontSize: 14, color: Colors.blueAccent),
            )
          ],
        ),
      ),
    );
  }
}
