import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final String text;
  final Icon icon;
  final bool hide;
  const AppInput(
      {Key? key, required this.text, required this.icon, this.hide = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color(0xffeeeeee)),
        child: TextFormField(
            obscureText: hide,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text,
              hintStyle: const TextStyle(fontSize: 15),
              prefixIcon: icon,
            )));
  }
}
