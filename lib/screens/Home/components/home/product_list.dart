import 'package:flutter/material.dart';
import 'package:flutter_project/models/product.dart';
import 'package:intl/intl.dart';

class ProductList extends StatelessWidget {
  final List<Product> list;
  final String title;
  const ProductList({Key? key, required this.list, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) => Container(
                  width: 110,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.network(list[index].image),
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                      ),
                      Text(
                        list[index].name,
                      ),
                      const SizedBox(height: 5),
                      Text(
                          NumberFormat.currency(locale: 'vi_VN')
                              .format(list[index].price)
                              .toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}