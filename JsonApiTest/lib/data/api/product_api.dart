import 'package:http/http.dart' as http;

class ProductApi {
  static Future getProducts() {
    return http.get("http://localhost:3000/products");
  }

  static Future getProductsByCategoryId(int categoryId) {
    return http.get("http://localhost:3000/products?categoryId=$categoryId");
  }
}
