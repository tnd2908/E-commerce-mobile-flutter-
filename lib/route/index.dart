
import 'package:flutter/widgets.dart';
import 'package:flutter_project/screens/Home/index.dart';
import 'package:flutter_project/screens/Login/login.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => const LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(title: 'asd')
};