import 'package:calc/PageResult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageCalc extends StatefulWidget {
  @override
  _PageCalcState createState() => _PageCalcState();
}

class _PageCalcState extends State<PageCalc> {


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

  void somar(){
    setState(() {
      num1 = int.parse(valor1.text);
      num2 = int.parse(valor2.text);
      igual = num1 + num2;
    });
  }
  void dimi(){
    setState(() {
      num1 = int.parse(valor1.text);
      num2 = int.parse(valor2.text);
      igual = num1 - num2;
    });
  }
  void multi(){
    setState(() {
      num1 = int.parse(valor1.text);
      num2 = int.parse(valor2.text);
      igual = num1 * num2;
    });
  }
  void divi(){
    setState(() {
      num1 = int.parse(valor1.text);
      num2 = int.parse(valor2.text);
      igual = num1 ~/ num2;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade900,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Calc",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: valor1,
                style: TextStyle(
                  color: Colors.white,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Digite o Valor",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.5,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: valor2,
                style: TextStyle(
                  color: Colors.white,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Digite o Valor",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.5,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Selecione uma operação abaixo:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ButtonBar(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Soma (+)",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Radio(
                          activeColor: Colors.white,
                          value: "+",
                          groupValue: selectedRadio,
                          onChanged:(var escolha) {
                            somar();
                            setState(() {
                              selectedRadio = escolha;
                              print("Resultado:" + escolha);
                            });
                          },
                        ),
                        Text("Diminuir (-)",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Radio(
                          activeColor: Colors.white,
                          value: "-",
                          groupValue: selectedRadio,
                          onChanged: (var escolha) {
                            dimi();
                            setState(() {
                              setState(() {
                                selectedRadio = escolha;
                                print("Resultado:" + escolha);
                              });
                              }
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Multiplicar (*)",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Radio(
                          activeColor: Colors.white,
                          value: "*",
                          groupValue: selectedRadio,
                          onChanged: (var escolha) {
                            multi();
                            setState(() {
                              setState(() {
                                selectedRadio = escolha;
                                print("Resultado:" + escolha);
                              });
                            });
                          },
                        ),
                        Text("Dividir (/)",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Radio(
                          activeColor: Colors.white,
                          value: "/",
                          groupValue: selectedRadio,
                          onChanged: (var escolha) {
                            divi();
                            setState(() {
                              setState(() {
                                selectedRadio = escolha;
                                print("Resultado:" + escolha);
                              });
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.only(
                  top: 15,
                  right: 100,
                  left: 100,
                  bottom: 15,
                ),
                child: Text(
                  "Cálcular",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    color: Colors.teal.shade900,
                  ),
                ),
                onPressed: () {
                  somar();
                  dimi();
                  multi();
                  divi();
                  selectedRadio;
                  calc();
                  Navigator.push(
                      (context),
                      MaterialPageRoute(
                          builder: (context) => PageResult()
                      )
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
