import 'package:flutter/material.dart';
import 'PageCalc.dart';

class PageResult extends StatefulWidget {
  int calcTotal;
  PageResult(this.calcTotal);

  @override
  _PageResultState createState() => _PageResultState();
}

class _PageResultState extends State<PageResult> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Text(
            "O Resultado é: ",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w500,
              color: Colors.teal.shade900,
            ),
          ),
        ),
      ),
    );
  }
}
