import 'dart:ui';

import 'package:aa_digital/routes/route_names.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/services_dropdown.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DrawerScreen({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getDeviceWidth(context) * 0.9,
      child: Drawer(
        backgroundColor: const Color.fromARGB(255, 57, 57, 57).withOpacity(0.2),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    scaffoldKey.currentState!.closeEndDrawer();
                  },
                  child: const Icon(
                    Icons.close,
                    color: Globals.whiteColor,
                    size: 30,
                  ),
                ),
                SizedBox(height: getDeviceHeight(context) * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.pop(context);
                      Navigator.pushReplacementNamed(context, home);
                    },
                    child: const Text("HOME",
                        style: TextStyle(
                            color: Globals.whiteColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.pop(context);
                      Navigator.pushReplacementNamed(context, aboutUs);
                    },
                    child: const Text("ABOUT US",
                        style: TextStyle(
                            color: Globals.whiteColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const ServicesDropdown(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.pop(context);
                      Navigator.pushReplacementNamed(context, contactUs);
                    },
                    child: const Text("CONTACT US",
                        style: TextStyle(
                            color: Globals.whiteColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
