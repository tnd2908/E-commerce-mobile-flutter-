import 'package:flutter/material.dart';
import 'package:flutter_project/screens/Login/components/login_footer.dart';
import 'package:flutter_project/screens/Login/components/login_form.dart';
import 'package:flutter_project/screens/Login/components/login_header.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
          ),
        ),
      child: Column(
          children: const [
              SizedBox(height: 40),
              LoginHeader(),
              LoginForm(),
              LoginFooter()
        ],
      ),
    );
  }
}