import 'package:flutter/material.dart';

class FoodItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // ------> appBar
        backgroundColor: Colors.yellow,
        title: Center(
          child: new Text( // ------> title
            "BUNZEL",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ) // ------> TextStyle (x)
          ) // ------> Text (x)
        ), // ------> Center (x)
      ), // ------> appBar (x)
      body: new Column( // ------> body
        children: <Widget>[
          new Center(
            child: Image(
              image: AssetImage('assets/images/burger.jpg')
              ) // ------> Image (x)
          ), // ------> Center (x)
          new Text(
            "BURP PO",
            style: new TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40.0
              ) // ------> TextStyle (x)
          ) // ------> Text (x)
        ], // ------> Widget (x)
      ) // ------> Column (x)
    ); // ------> Scaffold (x)
  } // ------> build
} // ------> StatelessWidget