import 'package:flutter/material.dart';

import '../shared widgets/leftdrawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MediaQuery.of(context).size.width < 600
        ? AppBar(backgroundColor: Colors.grey,
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
        drawer: MediaQuery.of(context).size.width < 600
            ? Leftdrawer()
            : null,
        body: Row(
          children: [
              MediaQuery.of(context).size.width > 600
                  ? Flexible(
                      flex: 1, child: Leftdrawer())
                  : Container(),
              Flexible(
                flex: 3,
                child: Text("Dashboard"),
              )
            ],
        ),
      )
      
    );
  }
}