import 'package:flutter/material.dart';
import 'package:mosque/models/shared.dart';
import 'package:mosque/screens/homepage.dart';
import 'package:mosque/screens/signup.dart';
import 'package:mosque/theme/sharedStyle.dart';
import 'package:mosque/widgets/fields.dart';



class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> emailKey = GlobalKey<FormState>();
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
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Forgot Password?\n',
                  style: TextStyle(color: primaryAppColor, fontSize: 20.0)
                ),
              ),
            ),
            Column(
              children: [
                TextButton(
                  child: Text(
                    'Login',
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
                      // saveToLocal('userEmail', emailController.text);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {return HomePage();}));
                    }
                  },
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {return SignUp();}));
                },
                child: Text(
                  '\nHave an Account? SignUp',
                  style: TextStyle(color: primaryAppColor, fontSize: 20.0)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}