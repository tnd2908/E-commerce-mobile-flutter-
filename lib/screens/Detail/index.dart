// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/components/app_bar_back.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/models/product.dart';
import 'package:flutter_project/providers/cart_provider.dart';
import 'package:flutter_project/screens/Cart/index.dart';
import 'package:flutter_project/screens/Detail/components/produc_detail.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/detail';
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: const PreferredSize(
        child: AppBarBack(),
        preferredSize: Size.fromHeight(60),
      ),
      backgroundColor: const Color(0xFFF5F6F6),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Image.network(
                          product.images[0],
                          height: 250,
                        ),
                      ),
                      productDetail(context, product),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.favorite_outline,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    borderSide: BorderSide(color: AppColors.primaryColor),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: RaisedButton(
                        color: AppColors.primaryColor,
                        onPressed: () {
                          context.read<CartProvider>().addToCart(product);
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 150,
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.check_circle_outline,
                                          color: AppColors.secondaryColor,
                                          size: 30),
                                      const SizedBox(width: 12),
                                      const Text(
                                          'Đã thêm sản phẩm vào giỏ hàng',
                                          style: TextStyle(fontSize: 17))
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: const Text(
                            'Thêm vào giỏ hàng',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
