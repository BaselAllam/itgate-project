import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<Map<String, dynamic>> drawerData = [
  {
    'icon' : Icons.home,
    'txt' : 'Home'
  },
  {
    'icon' : Icons.favorite,
    'txt' : 'Wishlist'
  },
  {
    'icon' : Icons.shopping_basket,
    'txt' : 'Shopping Basket'
  },
];

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
            children: [
              for(Map<String, dynamic> i in drawerData)
              ListTile(
                leading: Icon(i['icon'], color: Colors.black, size: 20.0),
                title: Text(i['txt'], style: TextStyle(color: Colors.black))
              ),
            ],
          ),
        ),
      )
    );
  }
}