// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Form(
        child: Column(
          children: [
            // const Text('Đăng ký tài khoản',
            //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            // const SizedBox(height: 30),
            Container(
                color: const Color(0xFFF6F5F5),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your name',
                      prefixIcon: Icon(Icons.person)),
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
                color: const Color(0xFFF6F5F5),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your phone number',
                      prefixIcon: Icon(Icons.phone)),
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
                color: const Color(0xFFF6F5F5),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your email',
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
            const SizedBox(height: 15),
            FlatButton(
                color: AppColors.primaryColor,
                textColor: Colors.white,
                onPressed: () {},
                minWidth: MediaQuery.of(context).size.width,
                height: 50,
                child: const Text('Đăng ký'),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0,
                      style: BorderStyle.solid,
                      color: AppColors.primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(4))),
          ],
        ),
      ),
    );
  }
}
