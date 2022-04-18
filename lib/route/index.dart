
import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:flutter_project/screens/Cart/index.dart';
import 'package:flutter_project/screens/Home/index.dart';
import 'package:flutter_project/screens/Login/login.dart';
import 'package:flutter_project/screens/Register/retister.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => const LoginScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(title: 'asd'),
  CartScreen.routeName: (context) => const CartScreen()
};