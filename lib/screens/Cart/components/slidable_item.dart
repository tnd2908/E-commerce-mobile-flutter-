import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class SlidableWidget extends StatelessWidget {
  late Widget widget;
  late int itemId;
  SlidableWidget({Key? key, required this.widget, required this.itemId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: widget,
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            // An action can be bigger than the others.
            onPressed: (context) {},
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.favorite,
            label: 'Favourite',
          ),
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: Colors.black45,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Remove',
          ),
        ],
      ),
    );
  }
}
