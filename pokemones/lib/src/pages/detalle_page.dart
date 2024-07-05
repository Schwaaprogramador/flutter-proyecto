import 'package:flutter/material.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({super.key, required this.color});

  final int color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(color), Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter)
        ),
      ),
    );
  }
}