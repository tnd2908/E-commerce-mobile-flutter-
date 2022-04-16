import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/dummy/data.dart';

class CateGories extends StatelessWidget {
  const CateGories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Danh mục sản phẩm',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            width: MediaQuery.of(context).size.width,
            child: Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: [
                for (var item in categoriesList)
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child:
                              Image.network(item.image, width: 35, height: 35),
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        ),
                        Text(item.name, style: const TextStyle(fontSize: 8))
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        color: AppColors.appColor),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
