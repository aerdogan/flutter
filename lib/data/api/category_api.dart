import 'package:http/http.dart' as http;

class CategoryApi {
  static Future getCategories() {
    return http.get("http://localhost:3000/categories");
  }
}
