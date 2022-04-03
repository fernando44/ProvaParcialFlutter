import 'package:flutter/material.dart';
import 'view/tela_principal.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'forza',
      initialRoute: 't1',
      routes: {
        't1' : (context) => const TelaPrincipal(),
        //'t2' : (context) => const TelaDetalhes(),
      },
    )
  );
}