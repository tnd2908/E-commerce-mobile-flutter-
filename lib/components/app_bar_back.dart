import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/screens/Cart/index.dart';

class AppBarBack extends StatelessWidget {
  const AppBarBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, CartScreen.routeName);
          },
          icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
        ),
        const SizedBox(width: 10)
      ],
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      backgroundColor: AppColors.primaryColor,
      title: Image.asset(
        'assets/images/logo-horizontal-solid.png',
        height: 105,
      ),
      centerTitle: true,
    );
  }
}
