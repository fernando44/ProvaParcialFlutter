import 'package:flutter/material.dart';

import '../../NavBar.dart';

// ignore: camel_case_types
class cts_v_sedan extends StatefulWidget {
  const cts_v_sedan({Key? key}) : super(key: key);

  @override
  State<cts_v_sedan> createState() => _cts_v_sedan();
}

// ignore: camel_case_types
class _cts_v_sedan extends State<cts_v_sedan> {
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
                'cts-v sedan',
                style: TextStyle(
                  color: Color.fromARGB(255, 165, 13, 13),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Image(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQvaJXHwi8lSUD9_ltoonwidHlN7FKEukFkqNHbFYvFEVZCH0Nx2JYbkUqpGQnfPH8HbE&usqp=CAU'),
              ),
              Text(
                'Cadillac 2016 Production Car',
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
                'O que você ganha quando combina o poder do Corvette Z06 com o melhor chassi e suspensão que a Cadillac já desenvolveu? Você adivinhou: o CTS-V Sedan. Projetado para competir com as potências alemãs na categoria de super sedãs, o CTS-V é lindo de morrer e fuma a competição tão facilmente quanto seus próprios pneus. Por dentro e por fora, o CTS-V está equipado com o luxo e o prestígio que você espera de um Cadillac. Entre e teste este passeio contra qualquer coisa em sua classe e você ficará surpreso com a potência, o som e o manuseio hábil. Este carro pode ser comprado com o revendedor de automóveis por 80.000 CR. Motor: V8 6.2L de 640HP com transmissão de 8 velocidades.',
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
                      'statCTS',
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
