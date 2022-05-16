import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/screens/Home/Fragments/cart.dart';
import 'package:flutter_project/screens/Home/Fragments/category.dart';
import 'package:flutter_project/screens/Home/Fragments/home.dart';
import 'package:flutter_project/screens/Home/Fragments/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  static String routeName = '/';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List fragments = const [
    HomeFragment(),
    CategoryFragment(),
    CartFragment(),
    UserFragment()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      extendBody: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag),
              iconSize: 30,
              color: Colors.white),
          const SizedBox(width: 20)
        ],
        toolbarHeight: 100,
        backgroundColor: AppColors.primaryColor,
        title:
            Image.asset('assets/images/logo-horizontal-solid.png', height: 130),
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            height: 60,
            child: const TextField(
              selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop,
              decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Color(0xFFE06C6C),
                  hintText: "Tìm kiếm",
                  hintStyle: TextStyle(color: Color(0xFFF6F6F6)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
      ),
      body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: fragments[currentIndex],
          )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Sản phẩm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Yêu thích',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Tài khoản',
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
