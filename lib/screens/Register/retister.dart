import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/screens/Register/components/body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static String routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back, size: 25),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 2,
        centerTitle: true,
        title: const Text('Đăng ký',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      backgroundColor: const Color(0xFFF6F6F6),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 200,
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Text('Gia nhập cùng với chúng tôi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 30),
                  const RegisterBody(),
                  Image.asset(
                    'assets/images/logo-horizontal.png',
                    height: 120,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
