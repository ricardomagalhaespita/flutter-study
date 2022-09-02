import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("                      Calculadora", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
      
        )
        ),
        body: Column(children:  [
          Text("Calculadora", style: TextStyle(fontSize: 20, color: Colors.indigo),textAlign: TextAlign.center,), 
          
          TextFormField(
            decoration: const InputDecoration(
            icon: Icon(Icons.arrow_right_alt_sharp),
            hintText: 'Digite o primeiro valor!',
            labelText: 'Primeiro Valor:',)),
        const SizedBox(
             height: 30
            ),

            TextFormField(
            decoration: const InputDecoration(
            icon: Icon(Icons.arrow_right_alt_sharp),
            hintText: 'Digite o segundo valor!',
            labelText: 'Segundo Valor:',))
        ]),
        floatingActionButton: FloatingActionButton(onPressed: (){}, child: Text("+", style: TextStyle(fontSize: 40),),),
      );
  }
}