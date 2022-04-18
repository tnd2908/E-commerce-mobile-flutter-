// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/dummy/data.dart';
import 'package:flutter_project/models/product.dart';
import 'package:flutter_project/screens/Cart/components/slidable_item.dart';
import 'package:intl/intl.dart';

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  List<Product> list = productList;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 600,
      child: ListView.separated(
          itemCount: list.length,
          separatorBuilder: (context, index) => const SizedBox(height: 6),
          itemBuilder: (context, index) => SlidableWidget(
                itemId: list[index].id,
                widget: Card(
                  elevation: 1,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
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
                                            color: Colors.white54,
                                            child: IconButton(
                                                onPressed: () {},
                                                iconSize: 15,
                                                color: AppColors.primaryColor,
                                                icon: const Icon(Icons.remove)),
                                          ),
                                          Container(
                                              padding: const EdgeInsets.fromLTRB(
                                                  10, 0, 10, 0),
                                              child: Text('1')),
                                          IconButton(
                                              onPressed: () {},
                                              iconSize: 15,
                                              color: AppColors.primaryColor,
                                              icon: const Icon(Icons.add)),
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
