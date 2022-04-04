// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Text('Hoặc đăng nhập với',
            style: TextStyle(color: AppColors.lightColor)),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
                color: AppColors.facebookColor,
                textColor: Colors.white,
                onPressed: () {},
                minWidth: MediaQuery.of(context).size.width / 2 - 20,
                height: 50,
                child: const Text('Facebook'),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0,
                    style: BorderStyle.solid,
                    color: AppColors.facebookColor,
                  ),
                )),
            FlatButton(
                color: AppColors.googleColor,
                textColor: Colors.white,
                onPressed: () {},
                minWidth: MediaQuery.of(context).size.width / 2 - 20,
                height: 50,
                child: const Text('Google'),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0,
                    style: BorderStyle.solid,
                    color: AppColors.googleColor,
                  ),
                )),
          ],
        )
      ],
    ),
    );
  }
}
