import 'package:flutter/material.dart';
import 'package:receptorui/estandar/appbarF.dart';

class Formulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        title: Container(
            child: Text(
          "Formulario",
          style: TextStyle(fontSize: 22),
        )),
        flexibleSpace: MyAppbar(),
      ),
      body: Container(
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
                                    decoration: const InputDecoration(
                                        filled: true, labelText: 'Id:'),
                                    readOnly: true,
                                  ),
                                ),
                                Container(
                                  width: 70,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: TextFormField(
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
                            decoration: const InputDecoration(
                                filled: true, labelText: 'Asunto:'),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                filled: true, labelText: 'Establecimiento:'),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                filled: true,
                                labelText: 'Correo Establecimiento:'),
                            textAlign: TextAlign.right,
                          ),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        filled: true, labelText: 'Valor:'),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Container(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              filled: true,
                                              labelText: 'Soporte:'),
                                          style: TextStyle(fontSize: 14),
                                          textInputAction:
                                              TextInputAction.newline,
                                          keyboardType: TextInputType.multiline,
                                          maxLines: 3,
                                          readOnly: true,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: [
                                            new SizedBox(
                                              height: 30.0,
                                              width: 30.0,
                                              child: new IconButton(
                                                padding:
                                                    new EdgeInsets.all(0.0),
                                                icon: new Icon(
                                                    Icons.upload_file,
                                                    size: 30.0),
                                                onPressed: () {
                                                  showModalBottomSheet(
                                                    context: context,
                                                    builder: (context) {
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          ListTile(
                                                            leading: new Icon(
                                                                Icons
                                                                    .camera_alt),
                                                            title: new Text(
                                                                'Tomar Foto'),
                                                          ),
                                                          ListTile(
                                                            leading: new Icon(
                                                                Icons.photo),
                                                            title: new Text(
                                                                'Seleccionar de Galeria'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                            new SizedBox(
                                              height: 30.0,
                                              width: 30.0,
                                              child: new IconButton(
                                                padding:
                                                    new EdgeInsets.all(0.0),
                                                icon: new Icon(Icons.visibility,
                                                    size: 30.0),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            child: const Text('Guardar'),
                            onPressed: () {},
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
