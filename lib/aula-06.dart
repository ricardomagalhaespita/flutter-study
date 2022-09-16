import 'package:flutter/material.dart';
import 'package:flutter_project/calculadora.dart';

import 'aula-04.dart';
import 'aula-05.dart';

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

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 35, 35),
        centerTitle: true,
        title: const Text(
          'Menu para Aulas!',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Center(
            child: const Text(
          "Olhe o menu a esquerda!",
          style: TextStyle(color: Colors.white),
        )),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Menu de Atividades',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text("Calculadora"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyApp06(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text("Aula-04"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyApp04(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text("Aula-05"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyApp05(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
