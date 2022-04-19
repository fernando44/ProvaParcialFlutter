import 'package:flutter/material.dart';
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
      body: Container(
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
                  width: 200,
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        var usr = txtUsuario.text.toUpperCase();
                        var pwd = txtSenha.text;

                        if ((usr == 'ANDROID' || usr == '') && pwd == 'android') {
                         
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
                    child: Text('entrar'),
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