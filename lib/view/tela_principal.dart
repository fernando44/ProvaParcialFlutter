import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/pais.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  //
  // LISTA DINÂMICA com objetos da classe Pais
  //
  List<Pais> lista = [];
  //
  // Carregar JSON
  // Método que permite carregar um arquivo no formato JSON
  carregarJson() async {
    final String f = await rootBundle.loadString('lib/data/paises.json');
    final dynamic d = await json.decode(f);
    setState(() {
      d.forEach((item) {
        lista.add(Pais.fromJson(item));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await carregarJson();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IBGE'),
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.white24,
      body: Padding(
        padding: const EdgeInsets.all(30),
        //
        // LISTVIEW.Builder
        //
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                lista[index].nome,
                style: const TextStyle(fontSize: 24),
              ),
              subtitle: Text(
                'Capital: ${lista[index].capital} / Área: ${lista[index].area} km²',
                style: const TextStyle(fontSize: 18),
              ),
              leading: const Icon(Icons.place_outlined),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                //
                // NAVEGAÇÃO
                // Ir para Tela de Detalhes
                Navigator.pushNamed(context, 't2', arguments: lista[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
