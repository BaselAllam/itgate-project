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

// @override
// void initState() {
//   checkUser();
//   super.initState();
// }

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



// Client Side

    // UI & Ux
    // Front-end


// API => Application Program Interface
    // XML => tags
    // JSON => Java Script Object Notation

    // HTTP request ( Client Side ' Mobile App, Dektop App, WebFramework ' )
        // URL ( bassel.com/courses )
        // HTTP Method ( Get, Post, Put, Delete )
        // Body ( send or recieve )
        // Header ( Additonal Information About your request )


// Server Side

    // Database
        // SQL
          // MySql
          // PostgreSQL
          // MsSql
          // OracleSQL

        // Documented ( NoSQL )
          // MongoDB
          // Firebase
    
    // Back-end
        // Python => Django, Flask, Bottle, Pyramid
        // PHP => Laravel
        // Ruby => Ruby on Rails
        // JS => NodeJs
        // C# => .Net, AspCore