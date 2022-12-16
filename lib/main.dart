import 'package:flutter/material.dart';
import 'package:flutter_catalouge/pages/home_page.dart';
import 'package:flutter_catalouge/pages/login_page.dart';
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
      initialRoute: "/home",
      routes: {
        "/": (context) => Login_page(),
        "/home": (context) => Login_page(),
        "/login": (context) => Login_page(),
      },
    );
  }
}
