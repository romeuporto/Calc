import 'package:calc/PageResult.dart';
import 'package:flutter/material.dart';
import 'RadiosCalc.dart';
class PageCalc extends StatefulWidget {

  String resultIgual;
  PageResult(this.resultIgual);

  @override
  _PageCalcState createState() => _PageCalcState();
}

class _PageCalcState extends State<PageCalc> {

  final TextEditingController valor1 = TextEditingController(text:"0");
  final TextEditingController valor2 = TextEditingController(text: "0");

  String _exibirMsg = "";
  void _limparCampos(){
    valor1.text = "";
    valor2.text = "";
  }

  void _calcular(){
    double caixa1 = double.parse(valor1.text);
    double caixa2 = double.parse(valor2.text);

    if(caixa1 == null || caixa2 == null){
      _exibirMsg = "Número inválido! Por favor digite um número mais que '0'";
    }else{
      print("Número válido");
    }
    _limparCampos();
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
                height: 30,
              ),
              Image.asset("images/logo.png",
                width: 90,
                color: Colors.white,
              ),
              Text(
                "Calc",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
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
              TextFormField(
                validator: (String valor){
                  if(valor.isEmpty) return "Insira um valor nos campos";
                  if(valor.isEmpty == 0) return "O valor '0' não é válido";
                  return null;
                },
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
              Text(
                  _exibirMsg,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
                        RadiosCalc(),
                        RadiosCalc(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RadiosCalc(),
                        RadiosCalc(),
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
                onPressed:(){
                    _calcular();
                    selectedRadio;
                    Navigator.push(
                        (context),
                        MaterialPageRoute(
                            builder: (context) => PageResult("O Resultado é: $igual",)
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