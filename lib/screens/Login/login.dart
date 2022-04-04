import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/screens/Login/components/body.dart';

const style = TextStyle(fontWeight: FontWeight.bold);

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.secondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    SizedBox(height: 170),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text('Welcome back!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
                    )
                  ],
                ),
                const LoginBody()
              ]
          ),
        )),
      ),
    );
  }
}
