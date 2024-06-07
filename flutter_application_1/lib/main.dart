import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

//Stateless => Sin estado
// las clases son al tiempo funciones
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Root(),
    );
  }
}



//StateFul => Con estado.
class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootPageState();
}

class _RootPageState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}