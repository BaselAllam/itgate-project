import 'package:flutter/material.dart';
import 'package:mosque/models/mosque/mosqueController.dart';
import 'package:mosque/models/shared.dart';
import 'package:mosque/screens/homepage.dart';
import 'package:mosque/screens/signin.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
   runApp(MyApp());
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}


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
    return ScopedModel(
      model: MosqueController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: userEmail!.isEmpty ? SignIn() : HomePage(),
      ),
    );
  }
  checkUser() async {
    String? email = await getFromLocal('userEmail');

    setState(() {
      userEmail = email!;
    });
  }
}