// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/screens/Register/retister.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(25),
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
                color: AppColors.secondaryColor,
                textColor: Colors.white,
                onPressed: () {},
                minWidth: MediaQuery.of(context).size.width,
                height: 45,
                child: const Text('Đăng nhập'),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  side: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: AppColors.darkColor,
                  ),
                )),
            const SizedBox(height: 20),
            Row(children: [
              Text('Chưa có tải khoản? ',
                  style: TextStyle(color: AppColors.lightColor)),
              GestureDetector(
                child: Text(' Đăng ký ngay',
                    style: TextStyle(color: AppColors.primaryColor)),
                onTap: () {
                  Navigator.pushNamed(context, RegisterScreen.routeName);
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
