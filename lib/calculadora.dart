import 'package:flutter/material.dart';



class MyApp06 extends StatefulWidget {
  const MyApp06({super.key});


  @override
  State<MyApp06> createState() => HomeState();
}

class HomeState extends State<MyApp06> {
  TextEditingController primeiroController = TextEditingController();
  TextEditingController segundoController = TextEditingController();

  String _infoText = "Digite os Valores!";

  void _resetFields(){
    primeiroController.text = "";
    segundoController.text = "";
    setState(() {
      _infoText = "Digite os Valores!";
    });
    
  }

  void _calculate(){
    double primeiro = double.parse(primeiroController.text);
    double segundo = double.parse(segundoController.text);
    double soma = primeiro + segundo;
    double subtracao = primeiro - segundo;
    double multiplicacao = primeiro * segundo;
    double divisao = primeiro / segundo;
    setState(() {
    _infoText = "A soma dos valores é: $soma\n A subtração dos valores é: $subtracao\n A multiplicação dos valores é: $multiplicacao\n A divisão dos valores é: $divisao\n"; 
    });  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.calculate, size: 120.0, color: Colors.indigo),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Primeiro Valor:",
                  labelStyle: TextStyle(color: Colors.indigo)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.indigo, fontSize: 25.0),
              controller: primeiroController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Segundo Valor:",
                  labelStyle: TextStyle(color: Colors.indigo)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.indigo, fontSize: 25.0),
              controller: segundoController,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                height: 50.0,
                child: ElevatedButton(
                  onPressed: _calculate,
                  child: Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
              ),
            ),
            Text(
              _infoText,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.indigo, fontSize: 25.0),
            )
          ],
        ),
      ),
    );
  }
}
