import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/screens/Cart/index.dart';
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
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: fragments[currentIndex],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
          ),
          const SizedBox(width: 10)
        ],
        backgroundColor: AppColors.primaryColor,
        title: Image.asset(
              'assets/images/logo-horizontal-solid.png',
              height: 105,
            ),
        centerTitle: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: const Color(0xFFBFBFBF),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
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
