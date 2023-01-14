// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_catalouge/pages/home_page.dart';
import 'package:flutter_catalouge/pages/login_page.dart';
import 'package:flutter_catalouge/utils/routes.dart';
import 'package:flutter_catalouge/widgets/themes.dart';
import 'package:flutter_catalouge/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => Login_page(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => Login_page(),

        // "/login": (context) => Login_page(),
      },
    );
  }
}
