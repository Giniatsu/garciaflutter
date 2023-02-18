import 'package:flutter/material.dart';
class ItemCard extends StatelessWidget {
const ItemCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Card(
      child: Container(
        height: 500,
        width: MediaQuery.of(context).size.width * .8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(top: 25,
                  child: Text(
                    'Iphone 13',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/iphone-transparent2.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  top: 25.0,
                  left: 0.0,
                  right: 0.0,
                  bottom: 25.0,
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              '\$50',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Your item description',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );


  }
}