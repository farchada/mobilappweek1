import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';
import 'package:mobileappweek1/screen/home.dart';
import 'package:mobileappweek1/screen/index.dart';
import 'package:mobileappweek1/screen/login.dart';
import 'package:mobileappweek1/screen/register.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
Widget build(BuildContext context){
  return MaterialApp(
    
    home: Index(),
    routes: {
      'Login' : (context) => Login(),
       'register' : (context) => Register(),
    },
    theme: ThemeData(
      primaryColor: sColor,
      secondaryHeaderColor: tColor,
    ),
  );

  }
}