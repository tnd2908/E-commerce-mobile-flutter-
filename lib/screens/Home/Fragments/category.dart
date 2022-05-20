// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/dummy/data.dart';
import 'package:flutter_project/screens/Detail/index.dart';
import 'package:intl/intl.dart';

class CategoryFragment extends StatelessWidget {
  const CategoryFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                minWidth: 10,
                height: 40,
                color: Colors.white,
                onPressed: () {},
                child: Icon(Icons.list_outlined),
              ),
              const SizedBox(width: 12),
              FlatButton(
                minWidth: 10,
                height: 40,
                color: Colors.white,
                onPressed: () {},
                child: Icon(Icons.apps),
              ),
              const SizedBox(width: 8),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
              height: 800,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: productList.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailScreen(),
                            settings:
                                RouteSettings(arguments: productList[index])));
                  },
                  child: Container(
                    height: 120,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xfff6f6f6),
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          ),
                        ]),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.network(productList[index].image,
                                width: 120),
                            margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16, top: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(productList[index].name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 8),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text('Màu sắc: '),
                                      const SizedBox(width: 6),
                                      blockColor(0xFF9F9E9E),
                                      const SizedBox(width: 6),
                                      blockColor(0xFFD4CDCD),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    NumberFormat.currency(locale: 'vi_VN')
                                        .format(productList[index].price)
                                        .toString(),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Container blockColor(int color) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
          color: Color(color),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
