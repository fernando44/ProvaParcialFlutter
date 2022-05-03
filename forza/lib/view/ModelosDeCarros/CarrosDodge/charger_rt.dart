import 'package:flutter/material.dart';

// ignore: camel_case_types
class charger_rt extends StatefulWidget {
  const charger_rt({Key? key}) : super(key: key);

  @override
  State<charger_rt> createState() => _charger_rt();
}


// ignore: camel_case_types
class _charger_rt extends State<charger_rt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                const Text(	
                  'Charger R/T',
                  style: TextStyle(
                    color: Color.fromARGB(255, 165, 13, 13),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Image(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQukQSgsYdoJiUoHHtVCWMd3T_HGnS_R34n7t0qiR64eaTQaXfyW7L7KC7jTfQZ1i6-GlQ&usqp=CAU'),
                ),
                Text(	
                  'Dodge 1969 Production Car United States of America',
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
                  'Como qualquer outro grande produto da Chrysler da época, o Charger era de certa forma convencional - havia a suspensão dianteira com barra de torção, o eixo traseiro com molas e inúmeras opções de ferro Mopar familiar sob o capô. Embora o estilo tenha sido ligeiramente revisado do modelo de 68, incluindo lanternas traseiras horizontais em vez das unidades redondas quádruplas, não foi a própria Dodge que tornou este carro tão conhecido do público em geral. A partir de 1979, o 69 Charger R/T foi o veículo de escolha dos Duke Boys na série de televisão Dukes of Hazzard, na qual o Charger conhecido como General Lee era tanto uma estrela quanto os atores humanos. É claro que o Charger também funciona fora da televisão, considerando que ele representa uma das várias centenas que vêm de fábrica com o lendário 426 HEMI. Com uma quantidade gigantesca de torque (480 lbs-ft., mais ou menos) ao comando do motorista, não é de admirar que os Dukes tenham escolhido o carro para suas aventuras épicas envolvendo pular sobre policiais infelizes do condado de Hazzard. Este carro pode ser comprado com o revendedor de automóveis por 103.000 CR.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Caracteristicas',
                  style: TextStyle(
                    color: Color.fromARGB(255, 165, 13, 13),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(	
                  'Velocidade: 5.1',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               Text(	
                  'Manejo: 3.8',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Aceleração: 3.6',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Lançamento: 3.5',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Frenagem: 2.4',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Off-Road: 5.1',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Motor: V8 de 7.0L de 425HP com transmissão de 4 velocidades.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Classificação: C 548',
                  style: TextStyle(
                    fontSize: 12,
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