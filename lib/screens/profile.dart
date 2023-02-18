import 'package:flutter/material.dart';

import '../shared widgets/leftdrawer.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: MediaQuery.of(context).size.width < 600
              ? AppBar(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/images/addu-seal-colorized.png', // replace this with your logo path
                        fit: BoxFit.contain,
                        height: 32,
                      ),
                      const Text('ATENEO DE DAVAO UNIVERSITY'),
                    ],
                  ),
                )
              : null,
          drawer: MediaQuery.of(context).size.width < 600 ? Leftdrawer() : null,
          body: Row(
            children: [
              MediaQuery.of(context).size.width > 600
                  ? Flexible(flex: 1, child: Leftdrawer())
                  : Container(),
              Flexible(
                flex: 3,
                child: Text("Profile"),
              )
            ],
          ),
        ));
  }
}