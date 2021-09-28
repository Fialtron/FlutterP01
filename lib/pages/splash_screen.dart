

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [Theme.of(context).accentColor, Theme.of(context).primaryColor],
              begin:  FractionalOffset(0, 0),
              end: FractionalOffset(1.0, 0),
              stops: [0.0 , 1.0],
              tileMode: TileMode.clamp,
          ),
        ),
      child: AnimatedOpacity(
          opacity: 1.0,
          duration: const Duration(milliseconds: 1200),
        child: Center(
          child: Container(
            height: 140.0,
            width: 140.0,
            child: Center(
              child: ClipOval(
                child: Icon(Icons.android_rounded, size: 128,),
              ),
            ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 2.0,
                offset: const Offset(5.0, 3.0),
                spreadRadius: 2.0,
              )
            ]
          ),
          ),
        ),
      ),
    );
  }
}
