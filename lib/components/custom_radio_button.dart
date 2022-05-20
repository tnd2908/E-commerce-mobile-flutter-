// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';

class RadioButton extends StatefulWidget {
  final List<String> list;
  RadioButton({Key? key, required this.list}) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  List<Widget> listWidget = [];
  int selectetedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: widget.list.map((e) {
      return customRadio(e, widget.list.indexOf(e));
    }).toList());
  }

  Widget customRadio(String txt, int index) {
    if (selectetedIndex == index) {
      return Container(
          margin: const EdgeInsets.only(right: 10),
          child: FlatButton(
            onPressed: () {
              setState(() {
                selectetedIndex = index;
              });
            },
            color: AppColors.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            child: Text(
              txt,
              style: const TextStyle(color: Colors.white),
            ),
          ));
    }
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: OutlineButton(
        onPressed: () {
          setState(() {
            selectetedIndex = index;
          });
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: Text(txt,
            style: TextStyle(
                color: selectetedIndex == index
                    ? AppColors.primaryColor
                    : Colors.black)),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
    );
  }
}
