import 'package:flutter/material.dart';
import 'package:calc/Calculator.dart';


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