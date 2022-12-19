import 'package:flutter/material.dart';
import 'package:flutter_catalouge/pages/home_page.dart';
import 'package:flutter_catalouge/pages/login_page.dart';
import 'package:flutter_catalouge/utils/routes.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // primaryTextTheme: GoogleFonts.comfortaaTextTheme()
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => Login_page(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => Login_page(),

        // "/login": (context) => Login_page(),
      },
    );
  }
}
