import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
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
        child: SingleChildScrollView(
          child: fragments[currentIndex],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          ),
        ],
        title: Image.asset(
          'assets/images/logo-text.png',
          height: 130,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const <Widget>[
          Icon(Icons.home, size: 25),
          Icon(Icons.list, size: 25),
          Icon(Icons.shopping_basket_outlined, size: 25),
          Icon(Icons.account_circle_outlined, size: 25),
        ],
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 200),
        onTap: (index) {
          setState(() {
            currentIndex = index ;
          });
        },
      ),
    );
  }
}
