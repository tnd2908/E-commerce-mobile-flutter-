// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      child: Form(
        child: Column(
          children: [
            Container(
                color: const Color(0xFFF6F5F5),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your username',
                      prefixIcon: Icon(Icons.mail_outline)),
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
                color: const Color(0xFFF6F5F5),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your password',
                      prefixIcon: Icon(Icons.lock_outline)),
                )),
            const SizedBox(height: 10),
            Row(
              children: [
                GestureDetector(
                  child: Text('Quên mật khẩu',
                      style: TextStyle(color: AppColors.lightColor)),
                ),
              ],
            ),
            const SizedBox(height: 15),
            FlatButton(
                color: AppColors.primaryColor,
                textColor: Colors.white,
                onPressed: () {},
                minWidth: MediaQuery.of(context).size.width,
                height: 50,
                child: const Text('Đăng nhập'),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0,
                    style: BorderStyle.solid,
                    color: AppColors.primaryColor,
                  ),
                )),
            const SizedBox(height: 20),
            Row(children: [
              Text('Chưa có tải khoản? ',
                  style: TextStyle(color: AppColors.lightColor)),
              GestureDetector(
                child: Text(' Đăng ký ngay',
                    style: TextStyle(color: AppColors.primaryColor)),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
