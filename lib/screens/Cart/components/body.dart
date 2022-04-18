import 'package:flutter/cupertino.dart';
import 'package:flutter_project/screens/Cart/components/cart_list.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CartList()
        ],
      ),
    );
  }
}