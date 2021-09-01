import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Welcome',
          style: TextStyle(color: Color(0xff34deeb), fontSize: 20.0)
        ),
        iconTheme: IconThemeData(color: Colors.black, size: 20),
        actions: [
          Icon(Icons.arrow_back_ios),
          Icon(Icons.arrow_back),
        ],
      ),
    );
  }
}