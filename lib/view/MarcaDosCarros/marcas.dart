import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/modelo.dart';

class Marcas extends StatefulWidget {
  const Marcas({Key? key}) : super(key: key);

  @override
  State<Marcas> createState() => _Marcas();
}

class _Marcas extends State<Marcas> {
  var Mdl;
  var nomeUsuario;

  @override
  void initState() {
    super.initState();
    
    Mdl = FirebaseFirestore.instance.collection('Marcas');
  }

  retornarNomeUsuario() async {
    var uid = FirebaseAuth.instance.currentUser!.uid.toString();
    await FirebaseFirestore.instance
        .collection('Cadastro')
        .where('uid', isEqualTo: uid)
        .get()
        .then((q) {
      if (q.docs.isNotEmpty) {
        nomeUsuario = q.docs[0].data()['nome'];
      } else {
        nomeUsuario = 'NENHUM';
      }
    });
  }

  Widget exibirDocumento(item) {
    //Converter um documento em um objeto
    Modelo c = Modelo.fromJson(item.id, item.data());
    return ListTile(
      title: Text(
        c.marca,
        style: const TextStyle(fontSize: 22),//titulo
      ),
      subtitle: Text(
        "Modelo:"+c.carro+"\nFabricação:"+c.clasificacao,
        style: const TextStyle(
          fontSize: 22,
          fontStyle: FontStyle.italic,
        ),
      ),
      onTap: () {
        Navigator.pushNamed(
          context,
          'inserir',
          arguments: item.id,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marcas'),
        centerTitle: true,
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        actions: [
          Column(
            children: [
              IconButton(
                tooltip: 'Deslogar',
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacementNamed(context, 'login');
                },
                icon: const Icon(Icons.logout),
              ),
              FutureBuilder(
                //future: retornarNomeUsuario(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return const CircularProgressIndicator();
                  } else {
                    return Text(
                      nomeUsuario.toString(),
                      style: const TextStyle(fontSize: 12),
                    );
                  }
                },
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      backgroundColor: Colors.brown[50],
      body: Container(
        padding: const EdgeInsets.all(50),
        child: StreamBuilder<QuerySnapshot>(
          stream: Mdl.snapshots(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Center(
                  child: Text('Não foi possível conectar'),
                );
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              default:
                //exibir os documentos da coleção
                final dados = snapshot.requireData;
                return ListView.builder(
                  itemCount: dados.size,
                  itemBuilder: (context, index) {
                    return exibirDocumento(dados.docs[index]);
                  },
                );
            }
          },
        ),
      ),
    );
  }
}

  /*
  get firestoreInstance => null;

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Marcas'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey.shade400,
          child: ListView(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 20), //pading em relação as bordas
            children: <Widget>[
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
                      'bugatti',
                    );
                  },
                  child: const Text("Bugatti"),
                ),
              ),

              const SizedBox(height: 10), // espaco entre os btn

              ButtonTheme(
                //em uso não retirar
                minWidth: 200.0,
                height: 100.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink, // background
                    onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      'cadillac',
                    );
                  },
                  child: const Text("Cadillac"),
                  //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
                ),
              ),

              const SizedBox(height: 10), // espaco entre os btn

              ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink, // background
                    onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'chevrolet');
                  },
                  child: const Text("Chevrolet"),
                  //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
                ),
              ),

              const SizedBox(height: 10), // espaco entre os btn

              ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink, // background
                    onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
                  ),
                  onPressed: () {
                    firestoreInstance.collection("Modelos").get().then((querySnapshot) {
                      querySnapshot.docs.forEach((result) {
                        print(result.data());
                      });
                    });
                    //Navigator.pushNamed(context, 'dodge');
                  },
                  child: const Text("Dodge"),
                  //child: Image.asset('lib/img/marcasLogoTst.png'), // coloca uma imagem ao inves do texto
                ),
              ),
            ],
          ),
        ));
  }
}
*/