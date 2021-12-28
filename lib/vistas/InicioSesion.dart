import 'package:flutter/material.dart';
import 'package:receptorui/estandar/colores.dart';

class InicioSesion extends StatelessWidget {
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
                    )),
              ),
              Container(
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      height: 140,
                      child:Center(
                        child: Image.asset('assets/imagenes/nuevoLogo.png'),
                      ), 
                    ) ,
                  ),
                  Form(
                    child: Scrollbar(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          color: Color.fromRGBO(243, 250, 234, 0.92),
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
                                                MaterialStateProperty
                                                    .all<Color>(Colores.azul),
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
