// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: camel_case_types
class dodge extends StatefulWidget {
  const dodge({Key? key}) : super(key: key);

  @override
  State<dodge> createState() => _dodge();
}

// ignore: camel_case_types
class _dodge extends State<dodge> {
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
                'challenger_srt_hellcat',
              );
            },
            child: const Text("Challenger SRT Hellcat"),
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
                'charger_rt',
              );
            },
            child: const Text("Charger R/T "),
            //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
          ),
        ),
      ],
    );
  }
}
