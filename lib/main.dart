import 'package:flutter/material.dart';
import 'package:flutter_project/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_project/route/index.dart';
import 'package:flutter_project/screens/Home/index.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => CartProvider())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
      ),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
