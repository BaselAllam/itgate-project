import 'package:flutter/material.dart';
import 'package:mosque/screens/homepage.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


// Design URL => https://cdn.dribbble.com/users/2485545/screenshots/15674994/media/e86cdd959b093842d1ced54fe4344ffc.png?compress=1&resize=1600x1200