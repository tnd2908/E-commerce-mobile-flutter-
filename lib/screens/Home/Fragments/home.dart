import 'package:flutter/material.dart';
import 'package:flutter_project/screens/Home/components/home/brand_list.dart';
import 'package:flutter_project/screens/Home/components/home/category_list.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
            CateGories(),
            BrandList()
        ],
      )
    );
  }
}