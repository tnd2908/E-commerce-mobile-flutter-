import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:flutter_project/providers/cart_provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SlidableWidget extends StatelessWidget {
  late Widget widget;
  late String itemId;
  SlidableWidget({Key? key, required this.widget, required this.itemId})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: widget,
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              context.read<CartProvider>().removeItem(itemId);
            },
            backgroundColor: AppColors.secondaryColor,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Remove',
          ),
        ],
      ),
    );
  }
}
