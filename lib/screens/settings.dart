import 'package:flutter/material.dart';
import 'package:garciaflutter/shared%20widgets/item_card.dart';

import '../shared widgets/leftdrawer.dart';

class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                child: Container(
                  alignment: Alignment.center,
                  child: ItemCard()
                  ),
              )
            ],
          ),
        ));
  }
}