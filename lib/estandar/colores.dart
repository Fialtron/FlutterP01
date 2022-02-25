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

  static const MaterialColor rosado = const MaterialColor(
    0xfffda2e1, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xffe492cb), //10%
      100: const Color(0xffca82b4), //20%
      200: const Color(0xffb1719e), //30%
      300: const Color(0xff986187), //40%
      400: const Color(0xff7f5171), //50%
      500: const Color(0xff65415a), //60%
      600: const Color(0xff4c3143), //70%
      700: const Color(0xff33202d), //80%
      800: const Color(0xff191016), //90%
      900: const Color(0xff000000), //100%
    },
  );

  static const MaterialColor verde = const MaterialColor(
    0xff88c82b, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff7ab427), //10%
      100: const Color(0xff6da022), //20%
      200: const Color(0xff5f8c1e), //30%
      300: const Color(0xff52781a), //40%
      400: const Color(0xff446416), //50%
      500: const Color(0xff365011), //60%
      600: const Color(0xff293c0d), //70%
      700: const Color(0xff1b2809), //80%
      800: const Color(0xff0e1404), //90%
      900: const Color(0xff000000), //100%
    },
  );

  static const MaterialColor azul = const MaterialColor(
    0xff00a1be, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff0091ab), //10%
      100: const Color(0xff008198), //20%
      200: const Color(0xff007185), //30%
      300: const Color(0xff006172), //40%
      400: const Color(0xff00515f), //50%
      500: const Color(0xff00404c), //60%
      600: const Color(0xff003039), //70%
      700: const Color(0xff002026), //80%
      800: const Color(0xff001013), //90%
      900: const Color(0xff000000), //100%
    },
  );
}


/*
https://maketintsandshades.com
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