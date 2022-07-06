import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double spacerWidth(BuildContext context, int ind) {
  MediaQueryData queryData;
  queryData = MediaQuery.of(context);
  double num = queryData.size.width;

  switch (ind) {
    case 1:
      num *= 0.1;
      break;
    case 2:
      num *= 0.2;
      break;
    case 3:
      num *= 0.3;
      break;
    case 4:
      num *= 0.4;
      break;
    case 5:
      num *= 0.5;
      break;
  }

  return num;
}

Widget divider(double width) {
  return Container(
    color: Colors.grey,
    height: 3,
    width: width,
  );
}
