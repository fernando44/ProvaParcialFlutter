
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:forza/view/bugatti.dart';
import 'package:forza/view/cadastro.dart';
import 'package:forza/view/login.dart';
import 'package:forza/view/marcas.dart';
import 'package:forza/view/sobre.dart';
import 'package:forza/view/type_35_c_1926.dart';
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
        'bugatti' : (context) => const Bugatti(),
        'type35c1926' : (context) => const type35c1926(),
        'sobre' : (context) => const sobre(),
        'cadastro' : (context) => const cadastro(),
      },
    )
  );
}