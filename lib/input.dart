import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget{

  final auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context){
        Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        title: "Login page",
        home: new Material(
            child: new Container (
                padding: const EdgeInsets.all(30.0),
                color: Colors.white,
                child: new Container(
                  child: new Center(
                      child: new Column(
                          children : [
                            new Padding(padding: EdgeInsets.only(top: 140.0)),
                            new Text('Login Here',
                              style: new TextStyle(color: hexToColor("#F2A03D"), fontSize: 25.0),),
                            new Padding(padding: EdgeInsets.only(top: 50.0)),
                            new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Enter Email",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              onChanged: (value) {
                                 email = value;
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                              width: 100,
                            ),
                            new TextFormField(
                              obscureText: true,
                              decoration: new InputDecoration(
                                labelText: "Enter password",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              onChanged: (value) {
                                password = value;
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            RaisedButton(
                              textColor: Colors.white,
                              color: Colors.brown,
                              child: Text('Confirm'),
                              onPressed: () async {
//                                Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
                               try {
                                  final newUser = await auth
                                      .createUserWithEmailAndPassword(
                                      email: email, password: password);
                                  if (newUser != null) {
                                     print('Error Occured');
                                  }
                                }
                                catch (e) {
                                  print(e);
                                }
                              },
                            ),
                          ]
                      )
                  ),
                )
            )
        )
    );
  }
}


