import 'package:demo1/SignIn/CompleteSignInButton.dart';
import 'package:flutter/material.dart';
import 'SignIn/SignIn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: SignIn(),
    );
  }
}
