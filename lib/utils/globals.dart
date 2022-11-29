import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Globals {
  static const blackColor = Colors.black;
  static const backgroundColor = Color(0xff343333);
  static const redColor = Color(0xffde0d08);
  static const redColorPrimary = Colors.red;
  static const whiteColor = Colors.white;
  static const greyColorDark = Color(0xff111111);
  static const greyColorLight = Color(0xff171717);
  static const transparentColor = Colors.transparent;
  static const greyColor = Colors.grey;
  static const lightBlue = Colors.lightBlue;
  static const blueColor = Colors.blue;
  static const orangeColor = Colors.orange;
  static const orangeColorButton = Color(0xffF16022);
  static const yellowColor = Colors.yellow;
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

  Future<void> launchIt(String type, String info) async {
    Uri uri = Uri();
    if (type == "Phone") {
      uri = Uri(scheme: "tel", path: info);
    } else if (type == "Email address") {
      uri = Uri(scheme: 'mailto', path: info);
    } else if (type == "website") {
      uri = Uri.parse(info);
    } else {
      uri = Uri.https('www.google.com',
          '/maps/search/?api=1&query=${double.parse(info.split(',')[0])},${double.parse(info.split(',')[1])}');
    }
    try {
      if (await canLaunchUrl(uri)) await launchUrl(uri);
    } catch (error) {
      throw ("Cannot open url");
    }
  }
}
