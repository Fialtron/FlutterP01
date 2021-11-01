import 'package:flutter/material.dart';
import 'package:receptorui/estandar/appbarF.dart';
import 'package:receptorui/estandar/colores.dart';

class Formulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        title: Container(
            child: Text(
          "Eventos",
          style: TextStyle(fontSize: 22),
        )),
        flexibleSpace: MyAppbar(),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          child: Scrollbar(
            child: Align(
              alignment: Alignment.topCenter,
              child: Card(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...[
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 18),
                                    decoration: const InputDecoration(
                                        filled: true, labelText: 'Id:'),
                                    readOnly: true,
                                  ),
                                ),
                                Container(
                                  width: 40,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 18),
                                    decoration: const InputDecoration(
                                        filled: true, labelText: 'Fecha:'),
                                    textAlign: TextAlign.right,
                                    readOnly: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(fontSize: 18),
                            decoration: const InputDecoration(
                                filled: true,
                                labelText: 'Establecimiento:',
                                icon: Icon(Icons.add_location_alt)),
                          ),
                          TextFormField(
                            style: TextStyle(fontSize: 18),
                            decoration: const InputDecoration(
                              filled: true,
                              labelText: 'Correo Establecimiento:',
                              icon: Icon(Icons.email),
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(fontSize: 18),
                            maxLines: 2,
                            decoration: const InputDecoration(
                              filled: true,
                              labelText: 'Asunto:',
                              icon: Icon(Icons.book),
                            ),
                            textAlign: TextAlign.right,
                          ),
                          TextFormField(
                            style: TextStyle(fontSize: 18),
                            decoration: const InputDecoration(
                              filled: true,
                              labelText: 'Valor:',
                              icon: Icon(Icons.monetization_on),
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        filled: true, labelText: 'Soporte:'),
                                    style: TextStyle(fontSize: 18),
                                    textInputAction: TextInputAction.newline,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 3,
                                    readOnly: true,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Ink(
                                        decoration: const ShapeDecoration(
                                            shape: CircleBorder(),
                                            color: Colores.morado),
                                        child: new IconButton(
                                          color: Colors.white,
                                          padding: new EdgeInsets.all(0.0),
                                          icon: new Icon(Icons.upload_file,
                                              size: 25.0),
                                          onPressed: () {
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return Container(
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.all(16),
                                                        height: 116,
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
                                                                Icons
                                                                    .camera_alt),
                                                            title: new Text(
                                                              'Tomar Foto',
                                                              style: TextStyle(
                                                                  fontSize: 22),
                                                            ),
                                                          ),
                                                          ListTile(
                                                            leading: new Icon(
                                                                Icons.photo),
                                                            title: new Text(
                                                              'Seleccionar de Galeria',
                                                              style: TextStyle(
                                                                  fontSize: 22),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Ink(
                                        decoration: const ShapeDecoration(
                                            shape: CircleBorder(),
                                            color: Colores.morado),
                                        child: new IconButton(
                                          color: Colors.white,
                                          icon: new Icon(Icons.visibility,
                                              size: 25.0),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colores.morado),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Guardar',
                                  style: TextStyle(fontSize: 22),
                                ),
                              ),
                            ),
                          ),
                        ].expand(
                          (widget) => [widget, const SizedBox(height: 24)],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
