import 'dart:convert';

import 'package:cart_app/config/api_config.dart';
import 'package:cart_app/model/products_model.dart';
import 'package:http/http.dart' as http;

class ProductRepo {
  static Future<ProductsModel?> getUnauthProducts() async {
    try {
      final response = await http.get(Uri.parse(GET_UNAUTH_PROD));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        return ProductsModel.fromJson(jsonResponse);
      } else {
        throw Exception('Failed to load products: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }
}
