import 'package:flutter/material.dart';
import 'package:flutter_project/dummy/data.dart';
import 'package:flutter_project/screens/Home/components/home/brand_list.dart';
import 'package:flutter_project/screens/Home/components/home/category_list.dart';
import 'package:flutter_project/screens/Home/components/home/event_list.dart';
import 'package:flutter_project/screens/Home/components/home/product_list.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CateGories(),
            const EventList(),
            ProductList(list: productList, title: 'Sản phẩm mới'),
            ProductList(
                list: List.from(productList.reversed), title: 'Bán chạy'),
            const BrandList(),
          ],
        ));
  }
}
