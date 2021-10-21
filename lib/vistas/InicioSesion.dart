import 'package:flutter/material.dart';

class InicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: true,
            bottom: false,
            child: Stack(children: [
              Container(
                color: Colors.white,
              ),
              Container(
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Center(
                      child: Image.asset('assets/imagenes/logo.jpeg'),
                    ),
                  ),
                  Form(
                    child: Scrollbar(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          color: Color.fromRGBO(224, 218, 218, 0.45),
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
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            decoration: const InputDecoration(
                                              filled: true,
                                              hintText: 'correo@ejemplo.com',
                                              labelText: 'Usuario:',
                                            ),
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
                                    TextButton(
                                        child: const Text('Iniciar Sesión'),
                                        onPressed: () {}),
                                  ].expand(
                                    (widget) => [
                                      widget,
                                      const SizedBox(
                                        height: 20,
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
