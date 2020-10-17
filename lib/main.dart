////import 'dart;html';
//import 'package:flutter/material.dart';
//
//
//import 'package:flutter/material.dart';
//
//void main() {
////  runApp(
////      MaterialApp(
////          home: Scaffold(
////            backgroundColor: Colors.blueGrey,
////            appBar: AppBar(
////              title: Text('My name is Suman Goyal'),
////              backgroundColor: Colors.blueGrey[900],
////            ),
////            body: Center(
////              child: Image(
////                image: AssetImage('images/myimage.jpg'),
////              ),
////            ),
////          ),
////      ),
////  );
////}
//  runApp(
//      MyApp()
//  );
//}
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.teal,
//        body: SafeArea(
//            child: Column(
////              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////           -- Make container to the left
//                crossAxisAlignment: CrossAxisAlignment.stretch,
//              children: [
//                Container(
//                  height: 30,
////               margin: EdgeInsets.fromLTRB(50, 50, 50, 50),
//                  color: Colors.yellow,
//                  child: Text('Container 1'),
//                ),
//                Container(
//                  height: 40,
//                  color: Colors.orangeAccent,
//                  child: Text('Container 2'),
//                )
//              ],
//            ),
//        ),
//    ),
//   );
//  }
//}





import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/myimage.jpg'),
                ),
                Text(
                  'Suman Goyal',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'DEVELOPER',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.blueAccent,
                      ),
                      title: Text(
                        '+91 7023397805',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.blueAccent,
                      ),
                      title: Text(
                        'sumangoyal1021@gmail.com',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontFamily: 'Source Sans Pro'),
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
