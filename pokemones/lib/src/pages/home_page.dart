import 'package:flutter/material.dart';
import 'package:pokemones/src/widgets/header_widget.dart';
import 'package:pokemones/src/widgets/lista_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      body: const Column(
        children: <Widget>[
          HeaderWidget(),
          ListaPersonajes(),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:const Color.fromARGB(255, 95, 25, 208),
        onPressed:()=>{},
        child: const Icon(Icons.add),
        ),
    );
  }
}