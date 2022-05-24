import 'package:flutter/material.dart';
import 'package:forza/view/MarcaDosCarros/marcas.dart';
import 'package:forza/view/sobre.dart';
import 'package:forza/view/tela_inicial.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.pink,
        child: ListView(padding: padding, children: <Widget>[
          const SizedBox(height: 16),
          buildMenuItem(
            text: 'Sobre',
            icon: Icons.people,
            onClicked: () => selected(context, "sobre"),
          ),
          const SizedBox(height: 16),
          buildMenuItem(
            text: 'Favoritos',
            icon: Icons.favorite_border,
          ),
          const SizedBox(height: 16),
          buildMenuItem(
            text: 'Marcas',
            icon: Icons.car_rental,
            onClicked: () => selected(context, "marca"),
          ),
          const SizedBox(height: 16),
          Divider(color: Colors.white70),
          const SizedBox(height: 16),
          const SizedBox(height: 16),
          buildMenuItem(
            text: 'Sair',
            icon: Icons.exit_to_app_outlined,
            onClicked: () => selected(context, "exit"),
          )
        ]),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
    onTap: onClicked,
  );
}

void selected(BuildContext context, String index) {
  switch (index) {
    case 'sobre':
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => sobre(),
      ));
      break;
    case 'exit':
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => TelaPrincipal(),
      ));
      break;
    case 'marca':
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Marcas(),
      ));
      break;
  }
}
