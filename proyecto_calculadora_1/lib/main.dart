import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main(List<String> args) {
  runApp(const CalculadoraApp());
}


//La clase con full
class CalculadoraApp extends StatefulWidget {
  const CalculadoraApp({super.key});
  @override
  State<CalculadoraApp> createState() =>  CalculadoraAppState();
}



//El estado de la clase
class CalculadoraAppState extends State<CalculadoraApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculadora",
      home: Scaffold(
        backgroundColor:Color.fromARGB(255, 37, 65, 65),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12), 
                  child: Text("Historial",  style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        color: Colors.white
                        )
                      )
                    ),
                  ),
              ),
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: (
                    Text("X", style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 48,
                        color: Colors.white
                      )
                    ),)
                  ),
                  )
              ),Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: (
                    Text("X", style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 48,
                        color: Colors.white
                      )
                    ),)
                  ),
                  )
              )
            ],
          ),
        ),
      )
    );
  }
}