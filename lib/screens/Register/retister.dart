import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/screens/Login/login.dart';
import 'package:flutter_project/screens/Register/components/body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static String routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back, size: 25),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 2,
        centerTitle: true,
        title: const Text('Đăng ký',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20)
        ),
      ),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: RegisterBody(),
        ),
      ),
    );
  }
}
