import 'package:flutter/material.dart';

import '../../NavBar.dart';

// ignore: camel_case_types
class type35c1926 extends StatefulWidget {
  const type35c1926({Key? key}) : super(key: key);

  @override
  State<type35c1926> createState() => _type35c1926();
}

// ignore: camel_case_types
class _type35c1926 extends State<type35c1926> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Visão Geral"),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            /*Vai retornar a tela anterior a essa, nao mexer*/
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Type 35 C 1926',
                style: TextStyle(
                  color: Color.fromARGB(255, 165, 13, 13),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Image(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6iLizDC8Jn15HegKJ8_F6LOsZA9JLY15llwQ6bs4obHl_rX_yolZ32rlD98iSjfjiASQ&usqp=CAU'),
              ),
              Text(
                'Bugatti 1926 Race Car, France',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 55, 29, 80),
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SINOPSE',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 165, 13, 13),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Ettore Bugatti começou a construir máquinas na virada do século 20 e estava à frente de seu tempo. Quando começou a construir carros de corrida como o Type 35, não demorou muito para que seus carros dominassem todas as corridas.O modelo de 1926 foi o segundo a utilizar um supercharger, essa adição tornou a marca uma lenda nas corridas. Este foi o terceiro ano do Type 35, e é movido por um motor de oito cilindros em linha de 2,0 litros.\nEsse carro pode ser comprado com o revendedor de automóveis por 1.300.000 CR.\nMotor: 2.0L de 95HP com transmissão original de 4 marchas.',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              ButtonTheme(
                //em uso não retirar
                minWidth: 200.0,
                height: 100.0,
                buttonColor: Colors.white,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink, // background
                    onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      'statType35C',
                    );
                  },
                  child: const Text("Estatísticas"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
