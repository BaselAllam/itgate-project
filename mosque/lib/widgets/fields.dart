import 'package:flutter/material.dart';
import 'package:mosque/theme/sharedStyle.dart';



SnackBar snack(Color color, String txt) {
  return SnackBar(
    backgroundColor: color,
    content: Text('$txt', style: primaryWhiteTextStyle),
    duration: Duration(seconds: 3)
  );
}



field(String label, IconData icon, TextInputType type, TextEditingController controller, bool isSecure, Widget showPassword, Key key) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        validator: (value) {
          if(value!.isEmpty) {
            return 'This Field Required';
          }
        },
        key: key,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.red, width: 0.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),
          labelText: '$label',
          labelStyle: primaryTextStyle,
          prefixIcon: Icon(icon, color: Colors.black, size: 20.0),
          suffixIcon: showPassword
        ),
        keyboardType: type,
        controller: controller,
        obscureText: isSecure
      ),
    );
}