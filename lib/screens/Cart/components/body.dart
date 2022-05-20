// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/models/cart.dart';
import 'package:flutter_project/providers/cart_provider.dart';
import 'package:flutter_project/screens/Cart/components/cart_list.dart';
import 'package:flutter_project/screens/Cart/components/payment_info.dart';
import 'package:provider/provider.dart';

class CartScreenBody extends StatefulWidget {
  const CartScreenBody({Key? key}) : super(key: key);

  @override
  State<CartScreenBody> createState() => _CartScreenBodyState();
}

class _CartScreenBodyState extends State<CartScreenBody> {
  @override
  Widget build(BuildContext context) {
    List<Cart> list = context.watch<CartProvider>().cart;
    double total = context.watch<CartProvider>().totalPrice;
    if (list.isNotEmpty) {
      return Container(
        color: const Color(0xFFF6F5F5),
        child: Column(
          children: [
            const CartList(),
            cartPaymentInfo(total),
            FlatButton(
              onPressed: () {},
              child: const Text('Thanh toán ngay',
                  style: TextStyle(color: Colors.white)),
              color: AppColors.primaryColor,
              minWidth: MediaQuery.of(context).size.width - 40,
              height: 45,
            )
          ],
        ),
      );
    }
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Image.network(
              'https://cdn.dribbble.com/users/1097272/screenshots/10671922/empty_shoppin_bag_4x.png'),
          const SizedBox(height: 12),
          const Text('Giỏ hàng của bạn đang trống',
              style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}
