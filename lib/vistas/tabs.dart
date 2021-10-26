import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:receptorui/estandar/appbarF.dart';

class Tabs extends StatelessWidget {
  List registros = [];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        title: Center(child: Text("Correos Recibidos")),
        flexibleSpace: MyAppbar(),
      ),
      body: Center(
        child: Container(
            child: Column(
          children: <Widget>[
            ...[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 3.0,
                  columns: const <DataColumn>[
                    DataColumn(
                        label: Text('Id',
                            style: TextStyle(fontStyle: FontStyle.italic))),
                    DataColumn(
                        label: Text('Remitente',
                            style: TextStyle(fontStyle: FontStyle.italic))),
                    DataColumn(
                        label: Text('Asunto',
                            style: TextStyle(fontStyle: FontStyle.italic))),
                    DataColumn(
                        label: Text('Fecha',
                            style: TextStyle(fontStyle: FontStyle.italic))),
                    DataColumn(label: Text('')),
                  ],
                  rows: registros
                      .map(
                        (elemento) => DataRow(
                          cells: <DataCell>[
                            DataCell(Container(
                                width: width * .05,
                                child: Text(elemento["id"].toString()))),
                            DataCell(Container(
                                width: width * .30,
                                child: Text(elemento["sender"]))),
                            DataCell(Container(
                                width: width * .30,
                                child: Text(elemento["subject"]))),
                            DataCell(Container(
                                width: width * .10,
                                child: Text(elemento["created_at"]))),
                            DataCell(
                              Container(
                                width: width * .08,
                                child: SizedBox(
                                  height: 25.0,
                                  width: 25.0,
                                  child: IconButton(
                                    padding: new EdgeInsets.all(0.0),
                                    icon:
                                        const Icon(Icons.view_list, size: 25.0),
                                    tooltip: "Descargar Factura",
                                    onPressed: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              ListTile(
                                                leading: new Icon(Icons.article,
                                                    color: Colors.blue),
                                                title: new Text(
                                                    'Descargar Factura'),
                                              ),
                                              ListTile(
                                                leading: new Icon(
                                                    Icons.check_circle_outline,
                                                    color: Colors.green),
                                                title:
                                                    new Text('Aceptar Correo'),
                                              ),
                                              ListTile(
                                                leading: new Icon(
                                                    Icons.cancel_outlined,
                                                    color: Colors.red),
                                                title:
                                                    new Text('Rechazar Correo'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    color: Colors.lightBlueAccent,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ].expand(
              (widget) => [
                widget,
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
