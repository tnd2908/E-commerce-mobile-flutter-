// ignore_for_file: unnecessary_string_interpolations

// import 'dart:convert';
// import 'package:flutter/foundation.dart';
import 'package:flutter_project/models/product.dart';
import 'package:http/http.dart' as http;

class Api {
  static const String url = 'http://localhost:5050/product';
  // static List<Product> parseProduct(String response) {
  //   var list = json.decode(response) as List<dynamic>;
  //   List<Product> productList = list.map((item) => Product.fromJson(item)).toList();
  //   return productList;
  // }
  static Future<dynamic> getProduct() async {
    try {
          final response = await http.get(Uri.parse(url));
    print(response);
    return response;
    } catch (e) {
      print(e);
    }
  }
}