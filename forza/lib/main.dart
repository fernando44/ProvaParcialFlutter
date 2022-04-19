import 'dart:js';

import 'package:flutter/material.dart';
import 'package:forza/view/login.dart';
import 'package:forza/view/marcas.dart';
import 'view/tela_inicial.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forza',
      initialRoute: 'TelaInicial',
      routes: {
        'TelaInicial' : (context) => const TelaPrincipal(),
        'login' : (context) => const LoginPage(),
        'marcas' : (context) => const Marcas(),
      },
    )
  );
}