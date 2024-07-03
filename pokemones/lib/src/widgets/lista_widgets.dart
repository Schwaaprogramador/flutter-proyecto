import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListaPersonajes extends StatefulWidget {
  const ListaPersonajes({super.key});
  @override
  State<ListaPersonajes> createState() => _ListaPersonajesState();
}

class _ListaPersonajesState extends State<ListaPersonajes> {

  //Stylooos------
  final tituloStyleText = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white
  );

  double anchoPantalla = 0;

  @override
  Widget build(BuildContext context) {

    anchoPantalla = MediaQuery.of(context).size.width-50;

    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text("Portadas", style: tituloStyleText),
          Row(children: [
            bloquePortada("p1.jpg", "titulo:", "2109:"),
            SizedBox(
              width: anchoPantalla*0.03,
            ),
            bloquePortada("p2.jpg", "titulo:", "2023"),
            SizedBox(
              width: anchoPantalla*0.03,
            ),
            bloquePortada("p3.jpg", "titulo:", "2018"),
          ],
          ),
          const Divider(
            thickness: 1,
            color: Color.fromARGB(255, 124, 123, 123),
          ),
          const SizedBox(
              height: 20,
          ),
          bloquePersonajes("arroz", 0xff21E295, "o1"),
          bloquePersonajes("arroz", 0xff21E295, "o1"),
          bloquePersonajes("arroz", 0xff21E295, "o1"),
          bloquePersonajes("arroz", 0xff21E295, "o1"),
        ],
      ),
    );
  }


  Widget bloquePersonajes(String name, int color, String imagen){
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 43, 43, 43),
      ),
      height:65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                    blurRadius: 10,
                    offset: const Offset(0, 0),                
                    color: Color(color),
                  )
                ],
                borderRadius: BorderRadius.circular(20)
                ),
                padding: const EdgeInsets.all(8),
                child: Image.asset("assets/$imagen.png"),
              ),
              const SizedBox(
                  width: 20,
              ),
              Text(name, style: const TextStyle(
                fontSize: 16,
                color: Colors.white
              ),)
            ],
          ),
          IconButton(onPressed: ()=>{}, icon: const Icon(
            Icons.more_rounded,
            color: Colors.grey,
          ))
        ],
      )
    );
  }

  Widget bloquePortada(String image, String titulo, String subtitulo){
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image", 
            width: anchoPantalla*0.31, 
            height: 110, 
            fit: BoxFit.cover),    
        ),
        const SizedBox(
              height: 15,
        ),
        RichText(text: TextSpan(
          text: titulo, style: const TextStyle(
            color: Colors.white70,
            fontSize: 14
          ),
          children: [
            TextSpan(
              text: subtitulo,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            )
          ]
        ))
      ],
    );
  }
}