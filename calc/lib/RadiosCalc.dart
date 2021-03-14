import 'package:flutter/material.dart';
import 'PageCalc.dart';

class RadiosCalc extends StatefulWidget {
  @override
  _RadiosCalcState createState() => _RadiosCalcState();
}

class _RadiosCalcState extends State<RadiosCalc> {

  final TextEditingController valor1 = TextEditingController(text:"0");
  final TextEditingController valor2 = TextEditingController(text: "0");

  var num1 = 0;
  var num2 = 0;
  var igual = 0;
  var selectedRadio;

  void calc(){
    setState(() {
      igual = valor1.text as int;
      igual = valor2.text as int ;
    });
  }

  String somar(){
    setState(() {
      num1 = int.parse(valor1.text);
      num2 = int.parse(valor2.text);
      igual = num1 + num2;
    });
    return "Resposta: $igual";
  }
  String dimi(){
    setState(() {
      num1 = int.parse(valor1.text);
      num2 = int.parse(valor2.text);
      igual = num1 - num2;
    });
    return "Resposta: $igual";
  }
  String multi(){
    setState(() {
      num1 = int.parse(valor1.text);
      num2 = int.parse(valor2.text);
      igual = num1 * num2;
    });
    return "Resposta: $igual";
  }
  String divi(){
    setState(() {
      num1 = int.parse(valor1.text);
      num2 = int.parse(valor2.text);
      igual = num1 ~/ num2;
    });
    return "Resposta: $igual";
  }

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Somar (+)",
              style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              ),
            ),
            Radio(
              activeColor: Colors.white,
              value: "+",
              groupValue: selectedRadio,
              onChanged: (var escolha) {
                setState(() {
                  somar();
                  dimi();
                  multi();
                  divi();
                  selectedRadio = escolha;
                });
              },
            ),
          ]
        ),
      ]
    );
  }
}