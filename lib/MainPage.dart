import 'package:flutter/material.dart';
import 'package:voted_aplication/LoginPage.dart';
import 'package:voted_aplication/SecondPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:voted_aplication/auth_services.dart';

class MainPage extends StatelessWidget {
  final FirebaseUser user;
  MainPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("E-Voting"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: RaisedButton(
                        child:
                            Text("Home", style: TextStyle(color: Colors.white)),
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: RaisedButton(
                        child:
                            Text("Room", style: TextStyle(color: Colors.white)),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SecondPage();
                          }));
                        },
                      ),
                    ),
                    Container(
                      child: RaisedButton(
                        child: Text("Log Out",
                            style: TextStyle(color: Colors.white)),
                        color: Colors.blue,
                        onPressed: () async {
                          await AuthServices.signOut();
                        },
                      ),
                    ),
                  ],
                )),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 100, 10, 10),
                  child: ListView(
                    children: <Widget>[
                      buildCard(),
                      RaisedButton(
                          child: Text("masuk",
                              style: TextStyle(color: Colors.white)),
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return SecondPage();
                              },
                            ));
                          })
                    ],
                  ),
                )),
            Flexible(flex: 1, child: Container()),
          ],
        ));
  }

  Card buildCard() {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
          ),
          Text(
            "Room 1",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
