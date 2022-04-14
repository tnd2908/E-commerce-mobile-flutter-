import 'package:flutter/material.dart';
import 'package:flutter_project/dummy/data.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BrandList extends StatelessWidget {
  const BrandList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Thương hiệu',
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brand.length,
              itemBuilder: (context, index) => Container(
                  height: 70,
                  width: 70,
                  padding: const EdgeInsets.all(10),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Container(child: SvgPicture.network(brand[index]))),
            ),
          )
        ],
      ),
    );
  }
}
