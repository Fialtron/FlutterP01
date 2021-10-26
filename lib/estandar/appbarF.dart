import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: Container(
            color: Colors.white,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset('assets/imagenes/fullappbar.png'),
            )));
  }
}
