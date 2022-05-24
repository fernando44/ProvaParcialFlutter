import 'package:flutter/material.dart';

import '../../NavBar.dart';

// ignore: camel_case_types
class challenger_srt_hellcat extends StatefulWidget {
  const challenger_srt_hellcat({Key? key}) : super(key: key);

  @override
  State<challenger_srt_hellcat> createState() => _challenger_srt_hellcat();
}

// ignore: camel_case_types
class _challenger_srt_hellcat extends State<challenger_srt_hellcat> {
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
                'Challenger SRT Hellcat',
                style: TextStyle(
                  color: Color.fromARGB(255, 165, 13, 13),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Image(
                image: NetworkImage(
                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVEhgSFRUYFRgZGRgYGBkZGBoSGBIcGBgZGhgYGBwcIS4lHB4rHxoYJjgmKy8xNTY1GiQ7QDszPy40OjEBDAwMEA8QHxESHzcsJSs2PTQ0NDg3OzU0NDY0MTQ0PTQ2NDc/MTY0NzQ3NjQ0NjQ0NDQ0NDQ9NDQ0PzE0ND82Nv/AABEIAKgBKwMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABQECAwQHBgj/xABBEAACAQIDBAcFBAkEAgMAAAABAgADEQQSIQUxQVEGEyJhcYGRB0KhscEycoLRFCNDUmKSorLwU4PC4RVUJDNz/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF/8QAKREBAAICAAUDBAIDAAAAAAAAAAECAxEEEiExQRNRkQUVImFxoTJCUv/aAAwDAQACEQMRAD8A7NERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERKQKxKXi8CsSl4vArEpeLwKxKSsBERAREQEREBERAREQEREBERAREQEREBERAREQERKQERNPaG0KdFc1RrDgN7MeSgakwmImZ1DbkNtPpHQo3DNmYbwtja2+5JCgjkTfunhukvTdmulMlR+6rdo97MNw7hp94HTn+0trH3zmb3UXQDl4CYzl66h6GPgdV5806h0vaftJC36tUUD3mJqfLKo/mM8pjvadXY2Wow7kRQPK4v/AFTwaJVrPouY/wBKfl4zfbZ4pNTzsGLMOza6248bnUjlLRW095ZXz46zrHSNe89ZTi9LcXVJyviGtvtUKD4NaZztHGne9TzrE/WXKcosFAHIAgDyAgVCeA8iCY9OERxmSO2viGM7RxY1JqnwqA/NhKrtioTrUcncQWYFfEHUdx48JkXO32UdvAXt42kRtSsqKcw7dzlAuCCTexvqVta/PS2u6tsUa/GW+Lj7VmPUrEx/GktV6SOrZRTU8RZ6gZhzAz68fSbuH6VU2AC1WotwD9eE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'),
              ),
              Text(
                'Dodge 2015 Production Car United States of America',
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
                'O Challenger SRT Hellcat é uma variante de alta potência do Challenger SRT8 392, com um motor HEMI V8 de 6,2 litros compartilhado com o Dodge Charger SRT Hellcat e o Jeep Grand Cherokee Trackhawk. Em comparação com outros modelos Challenger, ele não possui uma luz de direção interna na dianteira esquerda para permitir a entrada de ar no motor, adicionando mais torque. Ele também possui diferentes cavas das rodas para acomodar rodas de alumínio de 20 polegadas. Este carro pode ser comprado com o revendedor de automóveis por 75.000 CR. Motor: V8 de 6.2L de 707HP com transmissão de 8 velocidades.',
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
                      'statChallHellcat',
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
