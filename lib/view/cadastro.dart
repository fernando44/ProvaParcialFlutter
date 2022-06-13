import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'widgets/mensagem.dart';
// ignore: camel_case_types
class cadastro extends StatefulWidget {
  const cadastro({Key? key}) : super(key: key);

  @override
  State<cadastro> createState() => _cadastro();
}

// ignore: camel_case_types
class _cadastro extends State<cadastro> {
  var txtCpf = TextEditingController();
  var txtTelefone = TextEditingController();
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Cadastro'),
          centerTitle: true,
          backgroundColor: Colors.red.shade800),
      backgroundColor: Colors.brown[50],
      body: Container(
        padding: const EdgeInsets.all(50),
        child: ListView(
          children: [
            campoTexto('Nome', txtNome, Icons.people),
            const SizedBox(height: 20),
            campoTexto('Cpf', txtCpf, Icons.perm_identity),
            const SizedBox(height: 20),
            campoTexto('Telefone', txtTelefone, Icons.add_call),
            const SizedBox(height: 20),
            campoTexto('Email', txtEmail, Icons.email),
            const SizedBox(height: 20),
            campoTexto('Senha', txtSenha, Icons.lock, senha: true),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size(200, 45),
                      backgroundColor: Colors.red.shade800,
                    ),
                    child: const Text('criar'),
                    onPressed: () {
                      criarConta(txtNome.text, txtCpf.text, txtTelefone.text, txtEmail.text, txtSenha.text);
                    },
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size(200, 45),
                      backgroundColor: Colors.red.shade800,
                    ),
                    child: const Text('cancelar'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  campoTexto(texto, controller, icone, {senha}) {
    return TextField(
      controller: controller,
      obscureText: senha != null ? true : false,
      style: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(icone, color: Colors.red.shade800),
        prefixIconColor: Colors.red.shade800,
        labelText: texto,
        labelStyle: const TextStyle(color: Colors.red),
        border: const OutlineInputBorder(),
        focusColor: Colors.red.shade800,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 0.0,
          ),
        ),
      ),
    );
  }

  //
  // CRIAR CONTA no Firebase Auth
  //
  void criarConta(nome, cpf, telefone, email, senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((res) {
      //Armazenar o nome completo no Firestore
      //print('UID: ' + res.user!.uid.toString());
      FirebaseFirestore.instance.collection('Cadastro').add(
        {
          'UID': res.user!.uid.toString(),
          'NOME': nome,
          'CPF': cpf,
          'TELEFONE': telefone,       
          
        },
      );

      sucesso(context, 'O usuário foi criado com sucesso!');
      Navigator.pop(context);
    }).catchError((e) {
      switch (e.code) {
        case 'email-already-in-use':
          erro(context, 'O email já foi cadastrado.');
          break;
        case 'invalid-email':
          erro(context, 'O formato do email é inválido.');
          break;
        default:
          erro(context, e.code.toString());
      }
    });
  }
}