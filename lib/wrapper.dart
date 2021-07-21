import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:voted_aplication/LoginPage.dart';
import 'package:voted_aplication/MainPage.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    return (firebaseUser == null) ? LoginPage() : MainPage(firebaseUser);
  }
}
