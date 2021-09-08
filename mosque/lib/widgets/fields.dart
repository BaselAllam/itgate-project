import 'package:flutter/material.dart';
import 'package:mosque/theme/sharedStyle.dart';



SnackBar snack(Color color, String txt) {
  return SnackBar(
    backgroundColor: color,
    content: Text('$txt', style: primaryWhiteTextStyle),
    duration: Duration(seconds: 3)
  );
}