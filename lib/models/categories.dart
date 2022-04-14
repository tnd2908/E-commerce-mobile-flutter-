import 'package:flutter/material.dart';

class Categories{
  int id;
  String name;
  Widget image;

  Categories({required this.id, required this.name, required this.image});

  static List<Categories> categoryList= [
      Categories(id:1, name: "Điện thoại", image: const Icon(Icons.phone_android)),
      Categories(id:5, name: "Iphone", image: const Icon(Icons.phone_iphone)),
      Categories(id:2, name: "Tablet", image: const Icon(Icons.tablet_mac_outlined)),
      Categories(id:3, name: "Laptop", image: const Icon(Icons.laptop_chromebook_outlined)),
      Categories(id:4, name: "Macbook", image: const Icon(Icons.laptop_mac_outlined)),
    ];
}
