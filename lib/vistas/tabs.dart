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
                            child: Card(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const ListTile(
                                    leading: Icon(Icons.album),
                                    title: Text('The Enchanted Nightingale'),
                                    subtitle: Text(
                                        'Music by Julie Gable. Lyrics by Sidney Stein.'),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      TextButton(
                                        child: const Text('BUY TICKETS'),
                                        onPressed: () {/* ... */},
                                      ),
                                      const SizedBox(width: 8),
                                      TextButton(
                                        child: const Text('LISTEN'),
                                        onPressed: () {/* ... */},
                                      ),
                                      const SizedBox(width: 8),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 380,
                            child: Card(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const ListTile(
                                    leading: Icon(Icons.album),
                                    title: Text('The Enchanted Nightingale'),
                                    subtitle: Text(
                                        'Music by Julie Gable. Lyrics by Sidney Stein.'),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      TextButton(
                                        child: const Text('BUY TICKETS'),
                                        onPressed: () {/* ... */},
                                      ),
                                      const SizedBox(width: 8),
                                      TextButton(
                                        child: const Text('LISTEN'),
                                        onPressed: () {/* ... */},
                                      ),
                                      const SizedBox(width: 8),
                                    ],
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
          ),
        ),
      ),
    );
  }
}
