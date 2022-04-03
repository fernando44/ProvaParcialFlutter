import 'package:flutter/material.dart';

import '../model/pais.dart';

class TelaDetalhes extends StatefulWidget {
  const TelaDetalhes({Key? key}) : super(key: key);

  @override
  State<TelaDetalhes> createState() => _TelaDetalhesState();
}

class _TelaDetalhesState extends State<TelaDetalhes> {
  @override
  Widget build(BuildContext context) {
    //
    // RECUPERAR o objeto da classe PAIS que foi passado como argumento
    //
    var p = ModalRoute.of(context)!.settings.arguments as Pais;

    print('OK');

    return Scaffold(
      appBar: AppBar(
        title: const Text('IBGE'),
        backgroundColor: Colors.black87,
        //desativar o back button
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white24,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                'https://countryflagsapi.com/png/' +
                    p.abreviatura.toLowerCase(),
              ),
              Text(
                p.nome,
                style: const TextStyle(fontSize: 28),
              ),
              Text(
                p.historico,
                style: const TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
      //
      // FloatingAction
      //
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.favorite),
        backgroundColor: Colors.black87,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              content:
                  Text('${p.nome.toUpperCase()} adicionado aos favoritos.'),
            ),
          );
          Navigator.pop(context);
        },
      ),
    );
  }
}
