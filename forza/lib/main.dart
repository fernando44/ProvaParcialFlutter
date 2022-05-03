import 'package:flutter/material.dart';
import 'package:forza/view/MarcaDosCarros/chevrolet.dart';
import 'package:forza/view/MarcaDosCarros/dodge.dart';
import 'package:forza/view/ModelosDeCarros/CarrosBugatti/chiron.dart';
import 'package:forza/view/MarcaDosCarros/bugatti.dart';
import 'package:forza/view/MarcaDosCarros/cadillac.dart';
import 'package:forza/view/ModelosDeCarros/CarrosCadillac/cts_v_sedan.dart';
import 'package:forza/view/ModelosDeCarros/CarrosChevrolet/c8_corvette_stingray.dart';
import 'package:forza/view/ModelosDeCarros/CarrosChevrolet/chevelle_super_sport_454.dart';
import 'package:forza/view/ModelosDeCarros/CarrosDodge/challenger_srt_hellcat.dart';
import 'package:forza/view/ModelosDeCarros/CarrosDodge/charger_rt.dart';
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
        'chevrolet' :(context) => const chevrolet(),
        'dodge' :(context) => const dodge(),
       
        //tela dos carros
          //inicio bugatti
        'type35c1926' : (context) => const type35c1926(),
        'chiron' :(context) => const chiron(),
        //fim bugatti
        //inicio cadillac
        'cts_v_sedan' :(context) => const cts_v_sedan(),
        //fim cadillac
        //inicio chevrolet
        'c8_corvette_stingray' :(context) => const c8_corvette_stingray(),
        'chevelle_super_sport_454' :(context) => const chevelle_super_sport_454(),
        //fim chevrolet
        //inicio dodge
        'challenger_srt_hellcat' :(context) => const challenger_srt_hellcat(),
        'charger_rt' :(context) => const charger_rt(),
        //fim dodge
      },
    )
  );
}