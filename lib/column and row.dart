//import 'dart;html';
import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

void main() {
//  runApp(
//      MaterialApp(
//          home: Scaffold(
//            backgroundColor: Colors.blueGrey,
//            appBar: AppBar(
//              title: Text('My name is Suman Goyal'),
//              backgroundColor: Colors.blueGrey[900],
//            ),
//            body: Center(
//              child: Image(
//                image: AssetImage('images/myimage.jpg'),
//              ),
//            ),
//          ),
//      ),
//  );
//}
  runApp(
      MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           -- Make container to the left
                crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 30,
//               margin: EdgeInsets.fromLTRB(50, 50, 50, 50),
                  color: Colors.yellow,
                  child: Text('Container 1'),
                ),
                Container(
                  height: 40,
                  color: Colors.orangeAccent,
                  child: Text('Container 2'),
                )
              ],
            ),
        ),
    ),
   );
  }
}
