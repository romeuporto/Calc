import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageCalc extends StatefulWidget {
  @override
  _PageCalcState createState() => _PageCalcState();
}

class _PageCalcState extends State<PageCalc> {

  int selectedRadio;

  setSelectedRadio(int valor){
    setState(() {
      selectedRadio = valor;
    });
  }

  double _escolhaUsuario;
  
  void corpoCalc() {
    var soma;
    var diminui;
    var mult;
    var dividir;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade900,
      body: Container(
            padding: EdgeInsets.only(
              top: 80,
              right: 40,
              left: 40,
            ),
            child: Center(
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
                      height: 30,
                  ),
                  TextField(
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
                 Row(
                   children: <Widget>[
                   ButtonBar(
                     children: <Widget>[
                       Text("Soma (+)",
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       Radio(
                         activeColor: Colors.white,
                         value: 1,
                         groupValue: selectedRadio,
                         onChanged: (escolha){
                           setSelectedRadio(escolha);
                           print("Resultado:" + escolha);
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
                         value: 2,
                         groupValue: selectedRadio,
                         onChanged: (escolha){
                           setState(() {
                             setSelectedRadio(escolha);
                           });
                           print("Resultado:" + escolha);
                         },
                       ),
                     ],
                   ),
                   ],
                 ),
                  Row(
                    children: <Widget>[
                      Text("Multiplicar (*)",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Radio(
                        activeColor: Colors.white,
                        value: 3,
                        groupValue: selectedRadio,
                        onChanged: (escolha){
                          setState(() {
                            setSelectedRadio (escolha);
                          });
                          print("Resultado:" + escolha);
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
                        value: 4,
                        groupValue: selectedRadio,
                        onChanged: (escolha){
                          setState(() {
                            setSelectedRadio (escolha);
                          });
                          print("Resultado:" + escolha);
                        },
                      ),
                    ],
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
                    onPressed: (){
                    },
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
