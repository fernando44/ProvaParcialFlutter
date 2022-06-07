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
import 'package:forza/view/StatModelos/statsBugattiChiron.dart';
import 'package:forza/view/StatModelos/statsBugattiType35C.dart';
import 'package:forza/view/StatModelos/statsCadillacCTS.dart';
import 'package:forza/view/StatModelos/statsChevyChevelle.dart';
import 'package:forza/view/StatModelos/statsChevyCorvette.dart';
import 'package:forza/view/StatModelos/statsDodgeChallengerSRTHellcat.dart';
import 'package:forza/view/StatModelos/statsDodgeChargerRT.dart';
import 'package:forza/view/cadastro.dart';
import 'package:forza/view/login.dart';
import 'package:forza/view/MarcaDosCarros/marcas.dart';
import 'package:forza/view/sobre.dart';
import 'package:forza/view/ModelosDeCarros/CarrosBugatti/type_35_c_1926.dart';
import 'view/tela_inicial.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Forza',
    initialRoute: 'TelaInicial', //tela incial do projeto
    routes: {
      'TelaInicial': (context) => const TelaPrincipal(),
      'login': (context) => const LoginPage(),
      'sobre': (context) => const sobre(),
      'cadastro': (context) => const cadastro(),
      'marcas': (context) => const Marcas(),

      //tela das marcas
      'bugatti': (context) => const Bugatti(),
      'cadillac': (context) => const cadillac(),
      'chevrolet': (context) => const chevrolet(),
      'dodge': (context) => const dodge(),

      //tela dos carros
      //inicio bugatti
      'type35c1926': (context) => const type35c1926(),
      'statType35C': ((context) => TelaBugattiType35C()),
      'chiron': (context) => const chiron(),
      'statChiron': ((context) => TelaBugattiChiron()),
      //fim bugatti
      //inicio cadillac
      'cts_v_sedan': (context) => const cts_v_sedan(),
      'statCTS': (context) => TelaCadillacCTS(),
      //fim cadillac
      //inicio chevrolet
      'c8_corvette_stingray': (context) => const c8_corvette_stingray(),
      'statC8Corvette': (context) => TelaChevyCorvette(),
      'chevelle_super_sport_454': (context) => const chevelle_super_sport_454(),
      'statChevelle': (context) => TelaChevyChevelle(),
      //fim chevrolet
      //inicio dodge
      'challenger_srt_hellcat': (context) => const challenger_srt_hellcat(),
      'statChallHellcat': (context) => TelaChallengerHellcat(),
      'charger_rt': (context) => const charger_rt(),
      'statChargerRT': (context) => TelaChargerRT(),
      //fim dodge
    },
  ));
}
