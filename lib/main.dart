import 'package:flutter/material.dart';
import 'package:flutter_catalouge/pages/home_page.dart';
import 'package:flutter_catalouge/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/": (context) => Login_page(),
        "/home": (context) => Homepage(),
        "/login": (context) => Login_page(),
      },
    );
  }
}
