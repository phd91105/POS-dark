import 'package:admin_cms/models/food_model.dart';
import 'package:admin_cms/utils/constants.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static final client = http.Client();

  static Future<List<Food>> fetchProducts() async {
    final response = await client.get(Uri.parse('$API_URL/foods'));
    if (response.statusCode == 200) {
      final jsonString = response.body;
      return foodFromJson(jsonString);
    } else {
      return [];
    }
  }

  static Future<List<Category>> fetchCats() async {
    final response = await client.get(Uri.parse('$API_URL/categories'));
    if (response.statusCode == 200) {
      final jsonString = response.body;
      return categoryFromJson(jsonString);
    } else {
      return [];
    }
  }
}
