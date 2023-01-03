import 'package:flutter/material.dart';
import 'package:flutter_catalouge/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Text("Welcome to $days days of Flutter!"),
      ),
      drawer: MyDrawer(),
    );
  }
}
