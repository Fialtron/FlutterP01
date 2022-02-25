
import 'package:flutter/material.dart';
import 'package:receptorui/vistas/InicioSesion.dart';
import 'package:receptorui/vistas/dashBoard.dart';
import 'package:receptorui/vistas/formulario.dart';
import 'package:receptorui/vistas/tabs.dart';
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
        '/dashboard': (context) => DashBoard(),
        '/tabs': (context) => Tabs(),
        '/form': (context) => Formulario(),
      },
      theme: ThemeData(
        primarySwatch: Colores.azul,
        fontFamily: 'Nexa',
        // appBarTheme: AppBarTheme(shadowColor: Color.fromRGBO(255, 255, 225, 0)),
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
