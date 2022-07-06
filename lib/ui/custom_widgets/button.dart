import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget createButton(String text, dynamic function) {
  return TextButton(
    onPressed: function,
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    style: TextButton.styleFrom(
      primary: Colors.blue,
      onSurface: Colors.red,
      backgroundColor: Colors.lightBlue,
    ),
  );
}
