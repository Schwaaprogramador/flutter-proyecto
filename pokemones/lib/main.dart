import 'package:flutter/material.dart';
import 'package:pokemones/src/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "arroz",
      home: Home()
    );
  }
}
