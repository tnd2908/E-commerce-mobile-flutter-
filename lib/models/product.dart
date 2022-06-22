import 'package:flutter_project/models/brand.dart';
import 'package:flutter_project/models/categories.dart';

class Product {
  String id;
  String name;
  List images;
  double price;
  double rom;
  double ram;
  int totalQuantity;
  Categories categories;
  Brand brand;
  double quantity = 1;
  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.images,
      required this.rom,
      required this.ram,
      required this.totalQuantity,
      required this.categories,
      required this.brand});
}
