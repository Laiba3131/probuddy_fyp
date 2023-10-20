import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

push(context, screen) {
  Navigator.push(context, CupertinoPageRoute(builder: (_) => screen));
}

pop(context) {
  Navigator.pop(
    context,
  );
}

pushUntil(context, screen) {
  Navigator.pushAndRemoveUntil(
      context, CupertinoPageRoute(builder: (_) => screen), (route) => false);
}


// showSnackBar(context, text)
// {
//   var snackBar = SnackBar(content: Text(text));
//    ScaffoldMessenger.of(context).showSnackBar((snackBar));
// }