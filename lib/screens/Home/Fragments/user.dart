// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/screens/Login/login.dart';

class UserFragment extends StatelessWidget {
  const UserFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Vui lòng đăng nhập để sử dụng tính năng này'),
            const SizedBox(height: 30),
            FlatButton(
                color: AppColors.primaryColor,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                minWidth: MediaQuery.of(context).size.width - 60,
                height: 50,
                child: const Text('Đăng nhập'),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0,
                    style: BorderStyle.solid,
                    color: AppColors.primaryColor,
                  ),
                )),
          ],
        ));
  }
}
