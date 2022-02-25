import 'package:flutter/material.dart';
import 'package:receptorui/estandar/colores.dart';

// Ticher lo que tenga lineas es que se cambio xD

class InicioSesion extends StatelessWidget {
  Future<void> _displayPopUp(BuildContext context, String tipo) async {
    return showDialog(
      context: context,
      builder: (context) {
        if (tipo == "Crear") {
          return AlertDialog(
            backgroundColor: Colors.white, //-----------
            scrollable: true, //-----------
            titlePadding: EdgeInsets.zero, //-----------
            actionsPadding: EdgeInsets.all(20), //-----------
            title: Container(
              //----------- cambio todo el bloque
              padding: EdgeInsets.all(20),
              color: Colores.azul,
              child: Text(
                "Crear Usuario",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'NexaBold',
                  fontSize: 25,
                ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'correo@ejemplo.com',
                    labelText: 'Nombre:',
                  ),
                ),
                SizedBox(
                  //-----------
                  height: 10, //-----------
                ), //-----------
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'correo@ejemplo.com',
                    labelText: 'Correo:',
                  ),
                ),
                SizedBox(
                  //-----------
                  height: 10, //-----------
                ), //-----------
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'correo@ejemplo.com',
                    labelText: 'Clave:',
                  ),
                ),
                SizedBox(
                  //-----------
                  height: 10, //-----------
                ), //-----------
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'correo@ejemplo.com',
                    labelText: 'Confirmar Clave:',
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              //----------- Se cambio todo este bloque
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colores.azul),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Crear',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          );
        } else {
          return AlertDialog(
            backgroundColor: Colors.white, //-----------
            titlePadding: EdgeInsets.zero, //-----------
            actionsPadding: EdgeInsets.all(20), //-----------
            title: Container(
              //----------- Cambio todo este bloque
              padding: EdgeInsets.all(20),
              color: Colores.azul,
              child: Text(
                "Recuperar clave",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'NexaBold',
                  fontSize: 25,
                ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'correo@ejemplo.com',
                    labelText: 'Correo:',
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              //----------- Cambio todo el bloque
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colores.azul),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Recuperar',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: true,
            bottom: false,
            child: Stack(children: [
              SizedBox.expand(
                child: Container(
                  color: Colors.blue,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Image.asset('assets/imagenes/nuevoInicio.png'),
                  ),
                ),
              ),
              Container(
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      height: 140,
                      child: Center(
                        child: Image.asset('assets/imagenes/nuevoLogo.png'),
                      ),
                    ),
                  ),
                  Form(
                    child: Scrollbar(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          color: Color.fromRGBO(255, 255, 255, 0.95),
                          width: 500,
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 400),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ...[
                                    Text(
                                      'Iniciar sesión',
                                      style: TextStyle(
                                          fontFamily: 'Roboto', fontSize: 25),
                                    ),
                                    SizedBox(
                                      width: 300,
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            decoration: const InputDecoration(
                                              filled: true,
                                              hintText: 'correo@ejemplo.com',
                                              labelText: 'Usuario:',
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextFormField(
                                            obscureText: true,
                                            decoration: const InputDecoration(
                                              filled: true,
                                              labelText: 'Contraseña:',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 300,
                                      height: 50,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colores.azul),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushNamed('/dashboard');
                                          },
                                          child: const Text(
                                            'Iniciar',
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: GestureDetector(
                                              onTap: () async {
                                                await _displayPopUp(
                                                    context, "Crear");
                                              },
                                              child: new Text(
                                                "Crear Usuario",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .underline),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: GestureDetector(
                                              onTap: () async {
                                                await _displayPopUp(
                                                    context, "Recuperar");
                                              },
                                              child: new Text(
                                                "Recuperar Clave",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .underline),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].expand(
                                    (widget) => [
                                      widget,
                                      const SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ])));
  }
}
