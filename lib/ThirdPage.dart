import 'package:flutter/material.dart';
import 'package:voted_aplication/LogOut.dart';
import 'package:voted_aplication/SecondPage.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("E-Voting"),
        ),
        body: ListView(children: <Widget>[
          Container(
              margin: EdgeInsets.all(20),
              child: Center(
                  child: Text(
                "Paslon 2",
                style: TextStyle(fontSize: 20),
              ))),
          Container(
            child: Center(
              child: Text("Ketua"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 150,
            width: 150,
            child: Image(
              image: AssetImage("images/akun1.png"),
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Center(
                child: Text("Andi"),
              )),
          Container(
            child: Center(
              child: Text("Wakil"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 150,
            width: 150,
            child: Image(
              image: AssetImage("images/akun1.png"),
            ),
          ),
          Container(
              child: Center(
            child: Text("Budi"),
          )),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(20),
              child: RaisedButton(
                  child: Text("Vote", style: TextStyle(color: Colors.white)),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return LogOut();
                    }));
                  }),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 45),
            alignment: Alignment.bottomLeft,
            child: RaisedButton(
                child: Text(
                  "Back",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.pop(context);
                }),
          )
        ]));
  }
}
