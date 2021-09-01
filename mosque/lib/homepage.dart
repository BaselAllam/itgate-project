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
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, color: Colors.black, size: 20.0),
                  Text('Home', style: TextStyle(color: Colors.black))
                ],
              ),
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.black, size: 20.0),
                  Text('Wishlist', style: TextStyle(color: Colors.black))
                ],
              ),
              Row(
                children: [
                  Icon(Icons.info, color: Colors.black, size: 20.0),
                  Text('Abouts Us', style: TextStyle(color: Colors.black))
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}