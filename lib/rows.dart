import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Suman Goyal'),
          RaisedButton(
            onPressed: () {},
            color: Colors.amber,
            child: Text('click me'),
          ),
          Container(
              color: Colors.green,
              padding: EdgeInsets.all(30.0),
              child: Text('inside container')
          ),
          SizedBox(
            height: 100.0,
          ),
          Row(
              children: <Widget>[
                Container(
                    color: Colors.green,
                    child: Text('inside container'),
                    height: 80.0,
                    width: 70.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  color: Colors.green,
                  child: Text('inside container'),
                  height: 80.0,
                  width: 70.0,
                ),
              ]
          )
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('suman');
        },
        backgroundColor: Colors.red[600],
        child: Text('click'),
      ),
    );
  }
}
