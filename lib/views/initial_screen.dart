import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/asset_config.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globals.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AssetConfig.kLogo,
              height: getDeviceHeight(context) * 0.2,
              width: getDeviceWidth(context) * 0.4,
            ),
          ),
          Text("We Create\nThe Passion",
              textAlign: TextAlign.center,
              style: GoogleFonts.playfairDisplay(
                  textStyle: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Globals.whiteColor,
              ))),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardScreen()));
            },
            child: Container(
              height: getDeviceHeight(context) * 0.06,
              width: getDeviceWidth(context) * 0.4,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(50)),
              child: const Text("Let's Start",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Globals.whiteColor,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
