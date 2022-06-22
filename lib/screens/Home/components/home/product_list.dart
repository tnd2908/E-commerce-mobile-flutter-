import 'package:flutter/material.dart';
import 'package:flutter_project/models/product.dart';
import 'package:flutter_project/screens/Detail/index.dart';
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
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailScreen(),
                            settings: RouteSettings(arguments: list[index])));
                  },
                  child: Container(
                    width: 140,
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
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.network(list[index].images[0]),
                            margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                          ),
                          Column(
                            children: [
                              Text(
                                list[index].name,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                  NumberFormat.currency(locale: 'vi_VN')
                                      .format(list[index].price)
                                      .toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))
                            ],
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
}
