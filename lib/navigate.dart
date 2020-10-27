import 'package:flutter/material.dart';
void main() => runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: MainPage(),
    );
  }
}
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.deepOrangeAccent,
                  Colors.deepPurpleAccent
                ])
              ),
              child: Text('This is main page'),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
              },
            ),
            CustomListTitle(),
            ListTile(
              title: Text('Contact'),
            ),
            ListTile(
              title: Text('About'),
            ),
            ListTile(
              title: Text('Portfolio'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click button to move to SubPage'),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.teal,
              child: Text('Go to SubPage'),
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class CustomListTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Row(
          children: <Widget>[
            Icon(Icons.person),
            Text('profile'),
            Icon(Icons.arrow_right)
          ],
        )
    );
  }
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click button to back to Main Page'),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.black,
              child: Text('Back to Main Page'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

