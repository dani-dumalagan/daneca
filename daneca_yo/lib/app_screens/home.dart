import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
/* ==   ==   ==   ==   ==   ==   ==   ==   ==   ==   ==   ==   ==   ==   ==   

    return Center( // to customize widget width and height
      child: Container( // without Center() 
        // it takes width and height of material widget
        alignment: Alignment.center,
        color: Colors.lime,
        width: 200.0,
        height: 100.0,
        child: Text("Sa'nCaon", textDirection: TextDirection.ltr)
      )
    )
    ;
  }
}

Margin --> space between two widgets

EdgeInsets.All(20.0)
EdgeInsets.Only(right: 20.0)
Expanded(child: ) --> if huot kaayo

Padding --> space inside from the edges of the BOX

==   ==   ==   ==   ==   ==   ==   ==   ==   ==   ==   ==   ==   ==   ==    */


    return Center( // to customize widget width and height
      child: Container( // without Center() 
        // it takes width and height of material widget
        alignment: Alignment.center, // aligns text to center
        color: Colors.white, // set bg color
        child: new Row(
          children: <Widget>[

            Expanded(
              child: Text( // text box
            "Sa'nCaon", // text field
            textDirection: TextDirection.ltr, // direction
            style: TextStyle( // text style
              decoration: TextDecoration.none,
              fontSize: 46.0, // removes double underline
              fontFamily: 'Noto Sans HK', // font
              fontWeight: FontWeight.w300, // asset
              color: Colors.black
            )
            )
            ),

            Expanded(
              child: Text( // text box
            "The All-in TC Meu App", // text field
            textDirection: TextDirection.ltr, // direction
            style: TextStyle( // text style
              decoration: TextDecoration.none,
              fontSize: 30.0, // removes double underline
              fontFamily: 'Noto Sans HK', // font
              fontWeight: FontWeight.w100, // asset
              color: Colors.black
            )
            )
            )

          ],
          )
        
        
        
        
     
      )
    )
    ; // semi-colon
  } // widget
} // main