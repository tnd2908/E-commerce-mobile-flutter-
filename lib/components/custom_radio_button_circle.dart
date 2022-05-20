// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';

class RadioButtonCircle extends StatefulWidget {
  final List<int> list;
  RadioButtonCircle({Key? key, required this.list}) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButtonCircle> {
  List<Widget> listWidget = [];
  int selectetedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: widget.list.map((e) {
        return customRadioCircle(e, widget.list.indexOf(e));
      }).toList(),
      crossAxisAlignment: WrapCrossAlignment.center,
    );
  }

  Widget customRadioCircle(int color, int index) {
    if (selectetedIndex == index) {
      return Container(
        width: 35,
        height: 35,
        margin: const EdgeInsets.only(right: 12),
        child: OutlineButton(
          padding: const EdgeInsets.all(2),
          onPressed: () {
            setState(() {
              selectetedIndex = index;
            });
          },
          color: Color(color),
          shape: const CircleBorder(),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Color(color),
                border: Border.all(width: 2, color: const Color(0xFFEEEEEE)),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
          ),
        ),
      );
    }
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.only(right: 12),
      child: RaisedButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {
          setState(() {
            selectetedIndex = index;
          });
        },
        color: Color(color),
        shape: const CircleBorder(),
      ),
    );
  }
}
