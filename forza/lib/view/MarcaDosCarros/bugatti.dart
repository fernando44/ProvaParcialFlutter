// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Bugatti extends StatefulWidget {
  const Bugatti({Key? key}) : super(key: key);

  @override
  State<Bugatti> createState() => _Bugatti();
}

class _Bugatti extends State<Bugatti> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 20), 
      children: <Widget>[
        ButtonTheme(
          //em uso não retirar
          minWidth: 200.0,
          height: 100.0,
          buttonColor: Colors.white,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 48, 189, 255), // background
              onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                'type35c1926',
              );
            },
            child: const Text("Type 35 C 1926"),
          ),
        ),

        const SizedBox(height: 10), // espaco entre os btn

        ButtonTheme(//em uso não retirar
          minWidth: 200.0,
          height: 100.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 48, 189, 255), // background
              onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                'chiron',
              );
            },
            child: const Text("Chiron"),
            //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
          ),
        ),
      ],
    );
  }
}
