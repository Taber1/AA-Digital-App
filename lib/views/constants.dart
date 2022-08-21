import 'package:aa_digital/utils/globals.dart';
import 'package:flutter/material.dart';

double getDeviceHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

double getDeviceWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;

Widget servicesDescription({required String descrip}) {
  return Row(
    children: [
      const Icon(
        Icons.check,
        color: Globals.whiteColor,
      ),
      const SizedBox(width: 10),
      Text(
        descrip,
        style: const TextStyle(color: Globals.whiteColor),
      )
    ],
  );
}
