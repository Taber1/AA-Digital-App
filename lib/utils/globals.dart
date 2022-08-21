import 'package:flutter/material.dart';

class Globals {
  static const blackColor = Colors.black;
  static const redColor = Color(0xffde0d08);
  static const whiteColor = Colors.white;
  static const greyColorDark = Color(0xff111111);
  static const greyColorLight = Color(0xff171717);
  static Map<int, Color> color = {
    50: const Color.fromRGBO(34, 100, 45, .1),
    100: const Color.fromRGBO(34, 100, 45, .2),
    200: const Color.fromRGBO(34, 100, 45, .3),
    300: const Color.fromRGBO(34, 100, 45, .4),
    400: const Color.fromRGBO(34, 100, 45, .5),
    500: const Color.fromRGBO(34, 100, 45, .6),
    600: const Color.fromRGBO(34, 100, 45, .7),
    700: const Color.fromRGBO(34, 100, 45, .8),
    800: const Color.fromRGBO(34, 100, 45, .9),
    900: const Color.fromRGBO(34, 100, 45, 1),
  };
  static MaterialColor colorCustom = MaterialColor(0xFF022642d, color);
}
