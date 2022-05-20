import 'package:flutter/material.dart';
import 'package:flutter_project/screens/Cart/components/body.dart';

import '../../constants/colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text('Giỏ hàng', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: CartScreenBody(),
        ),
      ),
    );
  }
}
