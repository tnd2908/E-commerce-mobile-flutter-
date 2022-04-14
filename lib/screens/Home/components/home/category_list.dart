import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/dummy/data.dart';

class CateGories extends StatelessWidget {
  const CateGories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            const Text('Danh mục sản phẩm'),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesList.length,
                itemBuilder: (context, index) => Container(
                  height: 60,
                  width: 70,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: categoriesList[index].image,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        ),
                        Text(categoriesList[index].name, style: const TextStyle(fontSize: 8))
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: AppColors.appColor
                    ),
                  )
                ),
              ),
            )
        ],
      ),
    );
  }
}