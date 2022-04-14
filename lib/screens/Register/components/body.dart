import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/screens/Register/components/register_form.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.asset(
              'assets/images/logo.png',
              height: 130,
            ),
          const RegisterForm(),
        ],
      ),
    );
  }
}
