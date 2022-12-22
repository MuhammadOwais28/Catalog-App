import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://avatars.githubusercontent.com/u/114926646?s=400&u=eb9328690db839acea878ea2e34c5d35038ca420&v=4";
    return Drawer(
      child: Container(
        color: Colors.black,
        // color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text(
                  "Owais Amin",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  "owaisamin862@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.2,
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.2,
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "Mail",
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.2,
                ))
          ],
        ),
      ),
    );
  }
}
