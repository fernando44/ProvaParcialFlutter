// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../NavBar.dart';

class cadillac extends StatefulWidget {
  const cadillac({Key? key}) : super(key: key);

  @override
  State<cadillac> createState() => _cadillac();
}

// ignore: camel_case_types
class _cadillac extends State<cadillac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Cadillac - Modelos'),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade400,
        body: Container(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 400, vertical: 20),
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
                      'cts_v_sedan',
                    );
                  },
                  child: const Text("CTS-V Sedan"),
                ),
              ),
            ],
          ),
        ));
  }
}
