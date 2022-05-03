
import 'package:flutter/material.dart';

class sobre extends StatefulWidget {
  const sobre({Key? key}) : super(key: key);

  @override
  State<sobre> createState() => _sobre();
}

// ignore: camel_case_types
class _sobre extends State<sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                const Text(	
                  'Sobre',
                  style: TextStyle(
                    color: Color.fromARGB(255, 165, 13, 13),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                      height: 8.0,
                    ),
                const Text(	
                  'Tema Escolido: Guia sobre os carros do jogo Forza Horizon 5',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(	
                  'Objetivos do aplicativo: auxiliar os jogadores mostrando um pouco mais sobre os carros existentes no jogo',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 const SizedBox(
                      height: 11.0,
                    ),
                const Text(	
                  'Desenvolvedores: Fernando Chiareli Ferreira - 832110',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                      height: 11.0,
                    ),
                const Image(
                  image: NetworkImage('https://avatars.githubusercontent.com/u/55624432?s=400&u=667f4e097adc1dab4b693a81d16c70ae09cc3c3f&v=4'),
                ),
                const SizedBox(
                      height: 10.0,
                    ),

                const Text(	
                  'Desenvolvedores: Matheus Nicolussi',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               
            ],
            ),
        ),
      ),
    );
  }
  
}