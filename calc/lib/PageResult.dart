import 'package:flutter/material.dart';
import 'PageCalc.dart';

class PageResult extends StatefulWidget {

  String calcResult;
  PageResult(this.calcResult);

  @override
  _PageResultState createState() => _PageResultState();
}

class _PageResultState extends State<PageResult> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade900,
      body: Center(
        child: Container(
          child: Center(
            child: Text(
              widget.calcResult,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}