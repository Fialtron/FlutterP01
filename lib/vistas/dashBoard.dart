import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:receptorui/estandar/appbarF.dart';
import 'package:receptorui/estandar/colores.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) =>
      Scaffold(
        appBar: AppBar(
            toolbarHeight: 110,
            elevation: 0.0,
            title: Container(
                child: Text(
              "Dashboard",
              style: TextStyle(fontSize: 22),
            )),
            flexibleSpace: MyAppbar()),
        drawer: Container(
          width: 250,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(
                  height: 195,
                  child: DrawerHeader(
                    padding: EdgeInsets.zero,
                    decoration:
                        BoxDecoration(color: Colores.azul),
                    child: Center(
                      child: SizedBox(
                        width: double.infinity,
                        child: Container(
                          height: 120,
                          color: Colors.white,
                          child:  Image.asset('assets/imagenes/logoSinEs.png'),
                            
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text('Correos',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: const Text("Correos Recibidos",
                      style: TextStyle(fontSize: 18)),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/tabs');
                  },
                ),

                Divider(height: 3), //here is a divider
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text('Caja Menor',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.request_quote),
                  title: const Text("Legalización - Evento",
                      style: TextStyle(fontSize: 18)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.request_quote),
                  title: const Text("Legalización",
                      style: TextStyle(fontSize: 18)),
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: const Text("Cuotas", style: TextStyle(fontSize: 18)),
                ),
                Divider(height: 3), //here is a divider
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text('Flujos',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.description),
                  title: const Text("Facturas Activas",
                      style: TextStyle(fontSize: 18)),
                ),
                Divider(height: 3), //here is a divider
                Container(
                  margin: const EdgeInsets.all(10.0),
                  //color: Colors.amber[600],
                  height: 50.0,
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: const Text("Cerrar Sesión",
                      style: TextStyle(fontSize: 18)),
                ),
                Divider(height: 3), //here is a divider
                Container(
                  margin: const EdgeInsets.all(10.0),
                  //color: Colors.amber[600],
                  child: SizedBox(
                    width: 230,
                    height: 100,
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset('assets/imagenes/nuevosCuadritos.png'),
                        ),
                        Center(
                          child: Text(
                            "Ver. 0.1.5",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
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
