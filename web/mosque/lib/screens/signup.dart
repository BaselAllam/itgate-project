import 'package:flutter/material.dart';
import 'package:mosque/models/shared.dart';
import 'package:mosque/screens/homepage.dart';
import 'package:mosque/theme/sharedStyle.dart';
import 'package:mosque/widgets/fields.dart';


class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

TextEditingController emailController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> emailKey = GlobalKey<FormState>();
GlobalKey<FormState> userNameKey = GlobalKey<FormState>();
GlobalKey<FormState> passwordKey = GlobalKey<FormState>();

GlobalKey<FormState> formKey = GlobalKey<FormState>();

bool isSecured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: primaryAppColor,
                iconSize: 25.0,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              height: 200.0,
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              width: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('https://icons-for-free.com/iconfiles/png/512/man+icon-1320184411389497968.png'),
                  fit: BoxFit.fill
                )
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Welcome Back',
                style: primaryTextStyle
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Signin to Continue',
                style: secondaryTextStyle
              ),
            ),
            field('Email Address', Icons.email, TextInputType.emailAddress, emailController, false, SizedBox(), emailKey),
            field('User Name', Icons.account_box, TextInputType.text, userNameController, false, SizedBox(), userNameKey),
            field(
              'Password',
              Icons.lock,
              TextInputType.text,
              passwordController,
              isSecured,
              IconButton(
                icon: Icon(Icons.remove_red_eye),
                color: Colors.grey,
                iconSize: 20.0,
                onPressed: () {
                  setState(() {
                    isSecured = !isSecured;
                  });
                }
              ),
              passwordKey
            ),
            Column(
              children: [
                TextButton(
                  child: Text(
                    'SignUp',
                    style: primaryWhiteTextStyle,
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: primaryAppColor,
                    fixedSize: Size(MediaQuery.of(context).size.width/1.5, 40.0),
                  ),
                  onPressed: () {
                    if(!formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        snack(Colors.red, 'Some Fields Required!')
                      );
                    }else{
                      saveToLocal('userEmail', emailController.text);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {return HomePage();}));
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}