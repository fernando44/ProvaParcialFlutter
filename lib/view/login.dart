import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'widgets/mensagem.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  'Login',
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
                    labelText: 'Usuário',
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
                        var usuPadrao = 'android';
                        var senPadrao = 'android';

                        if ((usr == '' || usr == '') && pwd == '') {
                          Navigator.pushNamed(
                            context,
                            'marcas',
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Usuário e/ou senha inválidos.'),
                            ),
                          );
                        }
                      });
                    },
                    child: Text('Entrar'),
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
