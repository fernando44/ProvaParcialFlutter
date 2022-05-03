// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Marcas extends StatefulWidget {
  const Marcas({Key? key}) : super(key: key);

  @override
  State<Marcas> createState() => _Marcas();
}

class _Marcas extends State<Marcas> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 20), //pading em relação as bordas
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
                'bugatti',
              );
            },
            child: const Text("Bugatti"),
          ),
        ),

        const SizedBox(height: 10), // espaco entre os btn

        ButtonTheme(
          //em uso não retirar
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
                'cadillac',
              );
            },
            child: const Text("Cadillac"),
            //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
          ),
        ),

        const SizedBox(height: 10), // espaco entre os btn

        ButtonTheme(
          minWidth: 200.0,
          height: 100.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 48, 189, 255), // background
              onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'chevrolet');
            },
            child: const Text("Chevrolet"),
            //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
          ),
        ),

        const SizedBox(height: 10), // espaco entre os btn

        ButtonTheme(
          minWidth: 200.0,
          height: 100.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 48, 189, 255), // background
              onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'dodge');
            },
            child: const Text("Dodge"),
            //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
          ),
        ),
      ],
    );
  }
}
