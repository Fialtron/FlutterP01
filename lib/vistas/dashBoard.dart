import 'dart:ui';

import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) =>
      Scaffold(
        appBar: AppBar(
            toolbarHeight: 115,
            shadowColor: Color.fromRGBO(255, 255, 225, 0),
            title: Container(
                child: Text(
              "Dashboard",
              style: TextStyle(fontSize: 22),
            )),
            flexibleSpace: SizedBox.expand(
              child: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 67,
                          child: Container(
                            color: Color.fromRGBO(253, 162, 225, 1),
                          ),
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Container(
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child:
                                    Image.asset('assets/imagenes/dashdown.png'),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 120,
                        child: Container(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset('assets/imagenes/dashup11.png'),
                          ),
                        )),
                  ],
                ),
              ),
            )),
        drawer: Container(
          width: 250,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(
                  height: 160,
                  child: DrawerHeader(
                    padding: EdgeInsets.zero,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(139, 71, 118, 1)),
                    child: Center(
                      child: SizedBox(
                        width: double.infinity,
                        child: Container(
                          height: 80,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Receptor',
                                  style: TextStyle(fontSize: 40),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Facturación Electrónica',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text('Correos',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: const Text("Correos Recibidos"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/listaCorreos');
                  },
                ),

                Divider(height: 3), //here is a divider
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text('Caja Menor',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.request_quote),
                  title: const Text("Legalización - Evento"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/crearEvento');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.request_quote),
                  title: const Text("Legalización"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/listaEventos');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: const Text("Cuotas"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/listaEventos');
                  },
                ),
                Divider(height: 3), //here is a divider
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text('Flujos',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.description),
                  title: const Text("Facturas Activas"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/listaFacturas');
                  },
                ),
                Divider(height: 3), //here is a divider
                Container(
                  margin: const EdgeInsets.all(10.0),
                  //color: Colors.amber[600],
                  height: 50.0,
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: const Text("Cerrar Sesión"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/login', ModalRoute.withName('/login'));
                  },
                ),
                Divider(height: 3), //here is a divider
                Container(
                  margin: const EdgeInsets.all(10.0),
                  //color: Colors.amber[600],
                  height: 10.0,
                  child: Center(
                      child: Text("Ver. 0.1.5",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
        ),
        body: SizedBox.expand(
          child: Container(
            color: Colors.white,
          ),
        ),
      );
}
