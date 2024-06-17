import 'package:flutter/material.dart';


class Calcbuttom extends StatelessWidget {
  
  final Function callback;
  final String text;
  const Calcbuttom({super.key, required this.callback, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(
          onPressed: ()=>{callback(text)},
          style: TextButton.styleFrom(
            foregroundColor: Colors.white
          ),
        )
        ),
    );
  }
}