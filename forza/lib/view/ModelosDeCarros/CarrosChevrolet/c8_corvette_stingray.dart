import 'package:flutter/material.dart';

// ignore: camel_case_types
class c8_corvette_stingray extends StatefulWidget {
  const c8_corvette_stingray({Key? key}) : super(key: key);

  @override
  State<c8_corvette_stingray> createState() => _c8_corvette_stingray();
}


// ignore: camel_case_types
class _c8_corvette_stingray extends State<c8_corvette_stingray> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                const Text(	
                  'C8 Corvette Stingray',
                  style: TextStyle(
                    color: Color.fromARGB(255, 165, 13, 13),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Image(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHskZuO3stAwoxZKZi9Kfn3qEacTbFnPaq6mUa3DU5PCvB6M0BJR7YHJQFU6MzZcIPgWI&usqp=CAU'),
                ),
                Text(	
                  'Chevrolet 2020 Production Car United States of America',
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
                  'O Corvette Stingray Coupe 2020 marca a estreia do Chevrolet Corvette de oitava geração com o codinome C8, substituindo o Corvette de sétima geração com o codinome C7. Ao contrário de todas as gerações de modelos anteriores, o C8 Corvette é baseado em uma plataforma de tração traseira com motor central, abandonando o layout do motor dianteiro de seus antecessores. O Corvette Stingray é o nível de acabamento básico para os modelos coupé e conversível. Este carro pode ser comprado com o revendedor de automóveis por 65.000 CR.',
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
                  'Velocidade: 7.2',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               Text(	
                  'Manejo: 7.0',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Aceleração: 6.9',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Lançamento: 7.6',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Frenagem: 5.2',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Off-Road: 4.8',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Motor: V8 6.2L de 495HP com transmissão de 8 velocidades.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(	
                  'Classificação: S1 806',
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