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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Teste',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Teste',
                        style: TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Teste',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            'Teste',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '1',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '4',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '5',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '6',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '7',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '8',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '9',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.black,
                  width: 50,
                  height: 50,
                ),
                Text(
                  '0',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Container(
                  color: Colors.black,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ],
        ),
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
