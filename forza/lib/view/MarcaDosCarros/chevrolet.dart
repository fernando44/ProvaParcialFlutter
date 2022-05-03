// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: camel_case_types
class chevrolet extends StatefulWidget {
  const chevrolet({Key? key}) : super(key: key);

  @override
  State<chevrolet> createState() => _chevrolet();
}

// ignore: camel_case_types
class _chevrolet extends State<chevrolet> {
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
                'c8_corvette_stingray',
              );
            },
            child: const Text("C8 Corvette Stingray"),
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
                'chevelle_super_sport_454',
              );
            },
            child: const Text("Chevelle Super Sport 454"),
            //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
          ),
        ),
      ],
    );
  }
}
