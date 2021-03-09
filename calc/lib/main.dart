import 'package:flutter/material.dart';
import 'PageCalc.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.teal.shade900,
      accentColor: Colors.white,
    ),
    home: PageCalc(),
  ));
}