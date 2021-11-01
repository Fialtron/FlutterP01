import 'package:flutter/material.dart';
import 'package:receptorui/estandar/appbarF.dart';
import 'package:receptorui/estandar/colores.dart';

class Tabs extends StatelessWidget {
  List registros = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 180,
              flexibleSpace: Stack(
                children: [
                  MyAppbar(),
                  Container(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 360,
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Text(
                                "Correos Recibidos",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TabBar(
                              indicatorColor: Colores.rosado,
                              tabs: [
                                Tab(
                                  icon: Icon(Icons.description),
                                  child: Text(
                                    "Pendientes",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                Tab(
                                  icon: Icon(Icons.check_circle),
                                  child: Text(
                                    "Aceptadas",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                Tab(
                                  icon: Icon(Icons.do_disturb_on),
                                  child: Text(
                                    "Rechazadas",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: Center(
              child: Container(
                padding: EdgeInsets.all(15),
                child: TabBarView(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 380,
                            height: 170,
                            child: Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text.rich(
                                                TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 'Id:',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'RobotoBold',
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' ' + '7',
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 'Fecha:',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'RobotoBold',
                                                          fontSize: 18),
                                                    ),
                                                    TextSpan(
                                                      text: ' ' + '14-Aug-2021',
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Remitente:',
                                                  style: TextStyle(
                                                      fontFamily: 'RobotoBold',
                                                      fontSize: 18),
                                                ),
                                                TextSpan(
                                                  text: ' ' +
                                                      'support@postmanrkapp.com',
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Asunto:',
                                                  style: TextStyle(
                                                      fontFamily: 'RobotoBold',
                                                      fontSize: 18),
                                                ),
                                                TextSpan(
                                                  text: ' ' +
                                                      'FACTURA_ELECTRONICA#FE891',
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    height: double.infinity,
                                    child: Ink(
                                      color: Colores.rosado,
                                      child: InkWell(
                                        splashColor: Colores.rosado[100],
                                        onTap: () {
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (context) {
                                              return Container(
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      height: 146,
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Image.asset(
                                                          'assets/imagenes/cuadritos.png'),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: <Widget>[
                                                        ListTile(
                                                          leading: new Icon(
                                                              Icons.article,
                                                              color: Colores
                                                                  .morado),
                                                          title: new Text(
                                                            'Descargar Factura',
                                                            style: TextStyle(
                                                                fontSize: 22),
                                                          ),
                                                          onTap: () async {},
                                                        ),
                                                        ListTile(
                                                          leading: new Icon(
                                                              Icons
                                                                  .check_circle_outline,
                                                              color:
                                                                  Colors.green),
                                                          title: new Text(
                                                            'Aceptar Correo',
                                                            style: TextStyle(
                                                                fontSize: 22),
                                                          ),
                                                          onTap: () async {},
                                                        ),
                                                        ListTile(
                                                          leading: new Icon(
                                                              Icons
                                                                  .cancel_outlined,
                                                              color:
                                                                  Colors.red),
                                                          title: new Text(
                                                            'Rechazar Correo',
                                                            style: TextStyle(
                                                                fontSize: 22),
                                                          ),
                                                          onTap: () async {},
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Container(
                                          child: Icon(
                                            Icons.view_list,
                                            size: 30,
                                            color: Colores.morado[100],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 380,
                            height: 170,
                            child: Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text.rich(
                                                TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 'Id:',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'RobotoBold',
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' ' + '7',
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 'Fecha:',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'RobotoBold',
                                                          fontSize: 18),
                                                    ),
                                                    TextSpan(
                                                      text: ' ' + '14-Aug-2021',
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Asunto:',
                                                  style: TextStyle(
                                                      fontFamily: 'RobotoBold',
                                                      fontSize: 18),
                                                ),
                                                TextSpan(
                                                  text:
                                                      ' ' + 'Pago de Almuerzo',
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Valor:',
                                                  style: TextStyle(
                                                      fontFamily: 'RobotoBold',
                                                      fontSize: 18),
                                                ),
                                                TextSpan(
                                                  text: ' ' + ' 15.000',
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    height: double.infinity,
                                    child: Ink(
                                      color: Colores.rosado,
                                      child: InkWell(
                                        splashColor: Colores.rosado[100],
                                        onTap: () {
                                          Navigator.pushNamed(context, '/form');
                                        },
                                        child: Container(
                                          child: Icon(
                                            Icons.visibility,
                                            size: 30,
                                            color: Colores.morado[100],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.blueAccent,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Semantics(
                  label: 'NuevoEvento',
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/form');
                    },
                    heroTag: 'image0',
                    backgroundColor: Colores.morado,
                    tooltip: 'Clic para crear un nuevo evento',
                    child: const Icon(Icons.add, size: 35),
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
