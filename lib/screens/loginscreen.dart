import 'package:flutter/material.dart';
import 'package:garciaflutter/screens/dashboard.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return desktopView(context);
        } else {
          return mobileView(context);
        }
      },
    ));
  }

  Widget desktopView(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green , Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Center(
        child: LoginCard(MediaQuery.of(context).size.width * .2),
      ),
    );
  }

  Widget mobileView(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Center(
        child: LoginCard(MediaQuery.of(context).size.width * .8),
      ),
    );
  }

  Widget LoginCard(double wid) {
    return Card(
        child: Container(
          color: Colors.grey,
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: wid,
      height: 500,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/images/addu-seal-colorized.png",
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(
              height: 15,),
            Text("ATENEO DE DAVAO UNIVERSITY"),
            const SizedBox(
              height: 15,
            ),
            Text("Community Center Asset Management System"),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
                icon: Icon(Icons.mail),
                label: Text("Login with Google")),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.person),
                label: Text(
                  "Login as Guest",
                )),
          ]),
    ));
  }
}
