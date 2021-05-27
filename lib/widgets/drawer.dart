
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text('Monika'),
                accountEmail: Text('pawarmonika575@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://wallpapercave.com/wp/wp4987174.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(("Home"),
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white
                ),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(("Profile"),
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(("Email me"),
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),),
            )
          ],
        ),
      ),
    );
  }
}
