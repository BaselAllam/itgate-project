import 'package:flutter/material.dart';
import 'package:mosque/models/shared.dart';
import 'package:mosque/screens/homepage.dart';
import 'package:mosque/screens/signin.dart';


void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

String? userEmail = '';

@override
void initState() {
  checkUser();
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: userEmail!.isEmpty ? SignIn() : HomePage(),
    );
  }
  checkUser() async {
    String? email = await getFromLocal('userEmail');

    setState(() {
      userEmail = email!;
    });
  }
}