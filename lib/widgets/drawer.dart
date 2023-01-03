import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final image_url = 'https://wallpapercave.com/wp/wp9557400.png';
    return Drawer(
        child: Container(
      color: Colors.deepPurple,
      child: ListView(children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              // decoration: BoxDecoration(),
              accountName: const Text("RaidenShogan"),
              accountEmail: const Text("raidenshogan@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  // backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("assets/images/Raiden.webp")),
            )),
        const ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text("Home",
                style: TextStyle(color: Colors.white), textScaleFactor: 1.1)),
        const ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
            title: Text("Profile",
                style: TextStyle(color: Colors.white), textScaleFactor: 1.1)),
        const ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.white),
            title: Text("Email me",
                style: TextStyle(color: Colors.white), textScaleFactor: 1.1)),
      ]),
    ));
  }
}
