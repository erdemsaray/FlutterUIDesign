import 'package:eats_app/screens/account_page.dart';
import 'package:eats_app/screens/add_new_card_page.dart';
import 'package:eats_app/screens/menu_page.dart';
import 'package:eats_app/screens/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MenuPage(),
    );
  }
}
