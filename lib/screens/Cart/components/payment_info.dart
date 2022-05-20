// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:intl/intl.dart';

Padding cartPaymentInfo(double total) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Tổng tiền: ', style: TextStyle(fontSize: 15)),
              Text(
                NumberFormat.currency(locale: 'vi_VN').format(total).toString(),
                style: const TextStyle(fontSize: 15),
              )
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Phí ship: ', style: TextStyle(fontSize: 15)),
              Text('Miễn phí', style: TextStyle(fontSize: 15)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Giảm gía: ', style: TextStyle(fontSize: 15)),
              Text('0đ', style: TextStyle(fontSize: 15)),
            ],
          ),
          const SizedBox(height: 30),
          Row(children: [
            const Expanded(
                child: Padding(
              padding: EdgeInsets.only(right: 12),
              child: SizedBox(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffeeeeee), width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffeeeeee), width: 2.0),
                    ),
                    labelText: 'Nhập mã giảm giá',
                  ),
                ),
              ),
            )),
            SizedBox(
              height: 45,
              child: RaisedButton(
                onPressed: () {},
                color: AppColors.secondaryColor,
                child: const Text('Áp dụng',
                    style: TextStyle(color: Colors.white)),
              ),
            )
          ]),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Thành tiền: ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text(
                NumberFormat.currency(locale: 'vi_VN').format(total).toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                    fontSize: 17),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
