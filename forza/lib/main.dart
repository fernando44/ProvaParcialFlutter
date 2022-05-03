import 'package:flutter/material.dart';
import 'package:forza/view/ModelosDeCarros/CarrosBugatti/chiron.dart';
import 'package:forza/view/MarcaDosCarros/bugatti.dart';
import 'package:forza/view/MarcaDosCarros/cadillac.dart';
import 'package:forza/view/ModelosDeCarros/CarrosCadillac/cts_v_sedan.dart';
import 'package:forza/view/cadastro.dart';
import 'package:forza/view/login.dart';
import 'package:forza/view/MarcaDosCarros/marcas.dart';
import 'package:forza/view/sobre.dart';
import 'package:forza/view/ModelosDeCarros/CarrosBugatti/type_35_c_1926.dart';
import 'view/tela_inicial.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forza',
      initialRoute: 'TelaInicial',//tela incial do projeto
      routes: {
        'TelaInicial' : (context) => const TelaPrincipal(),
        'login' : (context) => const LoginPage(),
        'sobre' : (context) => const sobre(),
        'cadastro' : (context) => const cadastro(),
        'marcas' : (context) => const Marcas(),
        
        //tela das marcas
        'bugatti' : (context) => const Bugatti(),
        'cadillac' :(context) => const cadillac(),
       
        //tela dos carros
          //inicio bugatti
        'type35c1926' : (context) => const type35c1926(),
        'chiron' :(context) => const chiron(),
        //fim bugatti
        //inicio cadillac
        'cts_v_sedan' :(context) => const cts_v_sedan(),
        //fim cadillac
      },
    )
  );
}