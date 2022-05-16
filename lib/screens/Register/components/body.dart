import 'package:flutter/material.dart';
import 'package:flutter_project/screens/Register/components/register_form.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.elliptical(12, 12))),
        width: MediaQuery.of(context).size.width,
        child: const RegisterForm());
  }
}
