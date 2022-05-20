import 'package:flutter/material.dart';
import 'package:flutter_project/components/custom_radio_button.dart';
import 'package:flutter_project/components/custom_radio_button_circle.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/models/product.dart';
import 'package:intl/intl.dart';

Container productDetail(BuildContext context, Product product) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(15),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.name,
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            children: const [
              Text('Thương hiệu: ', style: TextStyle(fontSize: 16)),
              Text('Apple',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ],
          ),
          const SizedBox(height: 10),
          const Text('Dung lượng:', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 10),
          RadioButton(list: const ['128Gb', '256Gb', '512Gb']),
          const SizedBox(height: 10),
          const Text(
            'Màu sắc:',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          RadioButtonCircle(
              list: const [0xFF9BB7CF, 0xFF000000, 0xFF88838383, 0xFFFFFFFF]),
          const SizedBox(height: 10),
          const Text(
            'Gía bán:',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          Text(
            NumberFormat.currency(locale: 'vi_VN')
                .format(product.price)
                .toString(),
            style: TextStyle(
                fontSize: 22,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );
}
