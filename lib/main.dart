import 'package:flutter/material.dart';

// import 'calculadora.dart';
import 'aula-08.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homePage(),
   // home: Home(),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: homePage(),
//     );
//   }
// }

// class homePage extends StatelessWidget {
//   const homePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello World'),
//         ),
//         body: Container(
//           child: Center(child: const Text("Test")),       
//         ),
//       );
//   }
// }