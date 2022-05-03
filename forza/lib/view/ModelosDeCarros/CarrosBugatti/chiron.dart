import 'package:flutter/material.dart';

// ignore: camel_case_types
class chiron extends StatefulWidget {
  const chiron({Key? key}) : super(key: key);

  @override
  State<chiron> createState() => _chiron();
}

// ignore: camel_case_types
class _chiron extends State<chiron> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                const Text(	
                  'chiron',
                  style: TextStyle(
                    color: Color.fromARGB(255, 165, 13, 13),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Image(
                  image: NetworkImage('https://cdnb.artstation.com/p/assets/images/images/012/882/367/large/rico-yupita-chiron-2.jpg?1536989817'),
                ),
                Text(	
                  'Bugatti 2018 Production Car, France',
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
                  'O Chiron pode representar o pico absoluto de desempenho do motor de combustão interna, especialmente quando você considera os feitos surpreendentes de engenharia que atuaram em sua construção. O Chiron tem quatro turbos, dez radiadores; ele pode atingir uma velocidade máxima limitada eletronicamente de 420 Km/h e pode consumir seu tanque de combustível de 26,4 galões em menos de sete minutos. Claro, o Chiron pode ser lançado de 100 a 200 mph com o que parece ser a força de aceleração de um míssil balístico, mas este hipercarro Bugatti também é conhecido por excelente manuseio, graças em parte ao novo chassi monocoque de fibra de carbono. Há muitas outras estatísticas a serem consideradas, mas a melhor maneira de vivenciar esse marco na engenharia automotiva é conduzindo-o. Este carro pode ser comprado com o revendedor de automóveis por 2.400.000 CR.',
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
                  'Velocidade: 10',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               Text(	
                  'Manejo: 7.9',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Aceleração: 9.9',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Lançamento: 6.1',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Frenagem: 8.6',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Off-Road: 5.0',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Motor: V16 8.0L com transmissão de 7 velocidades.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Classificação: S2 927',
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