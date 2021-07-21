import 'package:flutter/material.dart';
import 'package:voted_aplication/auth_services.dart';
import 'package:voted_aplication/loginpage.dart';
import 'package:voted_aplication/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
