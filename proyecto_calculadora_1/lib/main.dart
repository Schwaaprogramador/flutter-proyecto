import "package:flutter/material.dart";

void main(List<String> args) {
  runApp(const CalculadoraApp());
}


class CalculadoraApp extends StatefulWidget {
  const CalculadoraApp({super.key});

  @override
  State <CalculadoraApp> createState() =>  CalculadoraAppState();
}

//El estado
class  CalculadoraAppState extends State <CalculadoraApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculadora",
      home: Scaffold(
        backgroundColor:const Color(0xFF283637),
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(),
        ),
      )
    );
  }
}