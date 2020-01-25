import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Twitter",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: MyHomePage(),
    );
  }
}

ThemeData lightTheme = ThemeData(
  primaryColor: Color(0xff00acee),
  accentColor: Color(0xff00acee),
  appBarTheme: AppBarTheme(
    color: Colors.white,
    iconTheme: IconThemeData(
      color: Color(0xff00acee),
    )
  )
);