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
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 90,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                title: SizedBox(
                  height: 110,
                  child: Column(children: [
                    Image.asset('assets/images/logo-horizontal.png',
                        height: 100),
                  ]),
                ),
                centerTitle: true,
              ),
              pinned: true,
              expandedHeight: 150,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(10),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  height: 60,
                  child: const TextField(
                    selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop,
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Color(0xFFf6f6f6),
                        hintText: "Search product",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([fragments[currentIndex]])),
          ],
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: AppColors.primaryColor,
      //   elevation: 0,
      //   title: Image.asset(
      //         'assets/images/logo-horizontal-solid.png',
      //         height: 130,
      //       ),,
      //   centerTitle: false,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
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
            icon: Icon(Icons.notifications),
            label: 'Notification',
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
