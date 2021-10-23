import 'package:flutter/material.dart';
import 'package:receptorui/vistas/InicioSesion.dart';
import 'package:receptorui/vistas/dashBoard.dart';
import 'estandar/colores.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => haciaSesion(),
        '/login': (context) => InicioSesion(),
        '/dashboard': (context) => DashBoard()
      },
      theme: ThemeData(
        primarySwatch: Colores.morado,
      ),
    );
  }
}

class haciaSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transición"),
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/login');
          },
          child: Text('Enabled'),
        ),
      ),
    );
  }
}
