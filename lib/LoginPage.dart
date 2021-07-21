import 'package:flutter/material.dart';
import 'package:voted_aplication/auth_services.dart';
import 'package:voted_aplication/mainpage.dart';

class LoginPage extends StatelessWidget {
  //mediaquery
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

//Controller email & password
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            left: -getSmallDiameter(context) / 4,
            top: -getSmallDiameter(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  "E-Voting",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: <Widget>[
                      //textfield untuk memasukkan password dan terdapat email controler
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.blue,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            labelText: "Email : ",
                            labelStyle: TextStyle(color: Colors.blue)),
                      ),
                      //textfield untuk memasukkan password dan terdapat password controler
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Colors.blue,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            labelText: "Password : ",
                            labelStyle: TextStyle(color: Colors.blue)),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    //tombol signin
                    RaisedButton(
                        child: Text(
                          "Sign-in",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          await AuthServices.signIn(
                            emailController.text,
                            passwordController.text,
                          );
                        }),
                    //tombol signup
                    RaisedButton(
                        child: Text(
                          "Sign-up",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          await AuthServices.signUp(
                            emailController.text,
                            passwordController.text,
                          );
                        })
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
