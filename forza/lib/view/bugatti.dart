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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20), //pading em relação as bordas
      children: <Widget>[
        
        ButtonTheme(
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
                'marcas',
              );
            },
            child: const Text("Bugatti"),
            
          ),
        ),

        const SizedBox(height: 10),// espaco entre os btn

        ButtonTheme(
          minWidth: 200.0,
          height: 100.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 48, 189, 255), // background
              onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
            ),
            onPressed: () {},
            child: const Text("Dodge"),
            //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
          ),
        ),

        const SizedBox(height: 10),// espaco entre os btn

        ButtonTheme(
          minWidth: 200.0,
          height: 100.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 48, 189, 255), // background
              onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
            ),
            onPressed: () {},
            child: const Text("Cadillac"),
            //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
          ),
        ),

        const SizedBox(height: 10),// espaco entre os btn

        ButtonTheme(
          minWidth: 200.0,
          height: 100.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 48, 189, 255), // background
              onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
            ),
            onPressed: () {},
            child: const Text("Ferrari"),
            //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
          ),
        ),

      ],
    );
  }
}
