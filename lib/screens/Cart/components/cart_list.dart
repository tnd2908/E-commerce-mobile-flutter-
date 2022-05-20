// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/models/cart.dart';
import 'package:flutter_project/providers/cart_provider.dart';
import 'package:flutter_project/screens/Cart/components/slidable_item.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    List<Cart> list = context.watch<CartProvider>().cart;
    return Container(
      padding: const EdgeInsets.all(10),
      height: list.length * 140,
      constraints: const BoxConstraints(maxHeight: 450),
      child: ListView.separated(
          itemCount: list.length,
          separatorBuilder: (context, index) => const SizedBox(height: 3),
          itemBuilder: (context, index) => SlidableWidget(
                itemId: list[index].id,
                widget: Card(
                  elevation: 1,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Image.network(list[index].image, height: 80),
                        Expanded(
                            child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(list[index].name,
                                        style: const TextStyle(fontSize: 16)),
                                    const SizedBox(height: 5),
                                    Text(
                                      NumberFormat.currency(locale: 'vi_VN')
                                          .format(list[index].price)
                                          .toString(),
                                      style: TextStyle(
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      width: 130,
                                      height: 30,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: IconButton(
                                                onPressed: () {
                                                  context
                                                      .read<CartProvider>()
                                                      .decrease(list[index].id);
                                                },
                                                iconSize: 15,
                                                color: AppColors.primaryColor,
                                                icon: const Icon(Icons.remove)),
                                          ),
                                          Container(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 10, 0),
                                              child: Text(list[index]
                                                  .quantity
                                                  .toString())),
                                          Container(
                                            child: IconButton(
                                                onPressed: () {
                                                  context
                                                      .read<CartProvider>()
                                                      .increaseNumber(
                                                          list[index].id);
                                                },
                                                iconSize: 15,
                                                color: AppColors.primaryColor,
                                                icon: const Icon(Icons.add)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )))
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
