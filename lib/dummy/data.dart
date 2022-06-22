import 'package:flutter_project/models/brand.dart';
import 'package:flutter_project/models/categories.dart';
import 'package:flutter_project/models/product.dart';

List categoriesList = [
  Categories(
    id: '5',
    name: "Điện thoại",
    icon: 'https://cdn-icons-png.flaticon.com/512/15/15874.png',
    type: 'main',
  ),
  Categories(
      id: '2',
      name: "Tablet",
      icon: 'https://cdn-icons-png.flaticon.com/512/114/114703.png',
          type: 'main',
),
  Categories(
      id: '3',
      name: "Laptop",
      icon: 'https://cdn-icons-png.flaticon.com/512/482/482469.png',
          type: 'main',
),
  Categories(
      id: '9',
      name: 'Đồng hồ',
      icon: 'https://cdn-icons-png.flaticon.com/512/916/916337.png',
          type: 'main',
),
  Categories(
      id: '1',
      name: 'Tai nghe',
      icon: 'https://cdn-icons-png.flaticon.com/512/2238/2238074.png',
          type: 'main',
),
  Categories(
      id: '10',
      name: 'Máy cũ',
      icon: 'https://cdn-icons-png.flaticon.com/512/6398/6398259.png',
          type: 'main',
),
  Categories(
      id: '8',
      name: 'Màn hình',
      icon: 'https://cdn-icons-png.flaticon.com/512/3474/3474360.png',
          type: 'main',
),
  Categories(
      id: '7',
      name: 'USB',
      icon: 'https://cdn-icons-png.flaticon.com/512/917/917147.png',
          type: 'main',
),
  Categories(
      id: '4',
      name: "Dây sạc",
      icon: 'https://cdn-icons-png.flaticon.com/512/640/640348.png',
          type: 'main',
),
  Categories(
      id: '6',
      name: 'Loa',
      icon: 'https://cdn-icons-png.flaticon.com/512/860/860330.png',
          type: 'main',
),
];
List brand = [
  "https://cdn.worldvectorlogo.com/logos/apple-13.svg",
  "https://cdn.worldvectorlogo.com/logos/samsung-galaxy-s.svg",
  "https://cdn.worldvectorlogo.com/logos/oppo-logo-2019.svg",
  "https://cdn.worldvectorlogo.com/logos/vivo-2.svg",
  "https://cdn.worldvectorlogo.com/logos/realme-1.svg",
];
List event = [
  'https://cdn.tgdd.vn/2022/04/banner/Desktop-380x200.png',
  'https://cdn.tgdd.vn/2022/04/banner/720-220-720x220-173.png',
  'https://cdn.tgdd.vn/2022/04/banner/pkle-720-220-720x220-2.png',
];
List<Product> productList = [
  Product(
      id: '0',
      name: 'iPhone 13 Pro Max 256Gb',
      price: 33990000,
      images:[
          'https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-sierra-blue-600x600.jpg'
      ],
      ram: 0,
      rom: 0,
      totalQuantity: 0,
      brand: Brand(id: '0', name: 'name', logo: 'logo'),
      categories: Categories(id: 'id', name: 'name', icon: 'icon', type: 'type')
),
  
];
