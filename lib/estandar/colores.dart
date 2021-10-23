import 'package:flutter/material.dart';

class Colores {
  static const MaterialColor morado = const MaterialColor(
    0xff8b4776, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff7d406a), //10%
      100: const Color(0xff6f395e), //20%
      200: const Color(0xff613253), //30%
      300: const Color(0xff532b47), //40%
      400: const Color(0xff46243b), //50%
      500: const Color(0xff381c2f), //60%
      600: const Color(0xff2a1523), //70%
      700: const Color(0xff1c0e18), //80%
      800: const Color(0xff0e070c), //90%
      900: const Color(0xff000000), //100%
    },
  );
}


/*
class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xffe55f48, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xffce5641), //10%
      100: const Color(0xffb74c3a), //20%
      200: const Color(0xffa04332), //30%
      300: const Color(0xff89392b), //40%
      400: const Color(0xff733024), //50%
      500: const Color(0xff5c261d), //60%
      600: const Color(0xff451c16), //70%
      700: const Color(0xff2e130e), //80%
      800: const Color(0xff170907), //90%
      900: const Color(0xff000000), //100%
    },
  );
}
*/