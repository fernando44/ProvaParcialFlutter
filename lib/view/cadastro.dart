import 'package:flutter/material.dart';

class cadastro extends StatefulWidget {
  const cadastro({Key? key}) : super(key: key);

  @override
  State<cadastro> createState() => _cadastro();
}

// ignore: camel_case_types
class _cadastro extends State<cadastro> {
  var txtUsuario = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            /*Vai retornar a tela anterior a essa, nao mexer*/
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.grey.shade400,
        padding: EdgeInsets.all(30),
        child: Center(
          child: Container(
            child: Column(
              children: [
                Text(
                  'Cadastro',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: txtUsuario,
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    labelStyle: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtUsuario,
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtSenha,
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.white,
                  width: 200,
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        var usr = txtUsuario.text.toUpperCase();
                        var pwd = txtSenha.text;

                        if ((usr == 'aswsaa' || usr == '') && pwd == '') {
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Usuário e/ou senha inválidos.'),
                            ),
                          );
                        }
                      });
                    },
                    child: Text('Cadastrar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
