import 'package:flutter/material.dart';



void main() {
  runApp(FirstScreen());
}


class FirstScreen extends StatelessWidget{

  final int x = 10;

  @override
  Widget build(BuildContext context) {
    return Text('$x');
  }
}


class SecondScreen extends StatefulWidget{

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>{

  int x = 20;

  @override
  Widget build(BuildContext context) {
    return Text('hello');
  }
}

// Widget
    // Widget is a class but can be rendered
    // Flutter => every thign is a widget
    // Stateless & Statefull
    // Widget is immutable => canot be changed


    // UI = state ( widget1 + widget2 )
        //  Data    Design

    // State LessWidget
    // State FullWidget
        // gurantee this changes can't happen out of the scope
        // state class should be private class
        // relation between state & widget


// Roles to decide which widget will use
    // Needs
    // Responsive
    // Performance