import 'package:flutter/material.dart';
import 'package:garciaflutter/screens/profile.dart';
import 'package:garciaflutter/screens/settings.dart';

import '../screens/dashboard.dart';

class Leftdrawer extends StatefulWidget {
  const Leftdrawer({ Key? key }) : super(key: key);

  @override
  _LeftdrawerState createState() => _LeftdrawerState();
}

class _LeftdrawerState extends State<Leftdrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Image.asset(
                  "assets/images/addu-seal-colorized.png",
                  width: 100,
                  height: 100,
                ),
                  Text('Community Center Asset Management System' ,textAlign: TextAlign.center,),
                ]
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Settings()));
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
          ],
        ),
      ),
    );
  }
}