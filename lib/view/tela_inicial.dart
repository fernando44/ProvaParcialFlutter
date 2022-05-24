import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //parte superior colorida
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.directions_car,
              size: 50,
              color: Colors.black,
            ),
            const Text('Forza Horizon 5 - Guia'),
            const Icon(
              Icons.directions_car,
              size: 50,
              color: Colors.black,
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),

      //corpo do projeto
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/img/logo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    OutlinedButton(
                      //btn login
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey.shade100),
                      onPressed: () {
                        Navigator.pushNamed(
                          //chama a tela de login
                          context,
                          'login',
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.red.shade800),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    OutlinedButton(
                      //btn cadastro
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey.shade100),
                      onPressed: () {
                        Navigator.pushNamed(
                          //chama a tela de login
                          context,
                          'cadastro',
                        );
                      },
                      child: Text(
                        'Cadastro',
                        style: TextStyle(color: Colors.red.shade800),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    OutlinedButton(
                      //btn cadastro
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey.shade100),
                      onPressed: () {
                        Navigator.pushNamed(
                          //chama a tela de login
                          context,
                          'sobre',
                        );
                      },
                      child: Text(
                        'Sobre',
                        style: TextStyle(color: Colors.red.shade800),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
