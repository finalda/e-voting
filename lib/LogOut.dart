import 'package:flutter/material.dart';
import 'package:voted_aplication/LoginPage.dart';
import 'package:voted_aplication/auth_services.dart';

class LogOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 150),
          child: Center(
              child: Text(
            "Terimakasih Telah Berpartisipasi dalam E-Voting",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          )),
        ),
        Container(
          margin: EdgeInsets.all(50),
          child: RaisedButton(
              child: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () async {
                await AuthServices.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              }),
        )
      ]),
    );
  }
}
