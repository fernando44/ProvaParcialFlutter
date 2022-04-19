import 'package:flutter/material.dart';
class Marcas extends StatefulWidget {
  const Marcas({Key? key}) : super(key: key);

  @override
   State<Marcas> createState() => _Marcas();
}

class _Marcas extends State<Marcas> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              'login',
            );
          },
          child: Image.asset('lib/img/LogoAudi.png'),                
        ),

        ElevatedButton(
          onPressed: () {},
          child: Image.asset('lib/img/LogoAudi.png'),
        ),
        
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }
}
