import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/asset_config.dart';
import '../utils/globals.dart';
import 'constants.dart';
import 'header.dart';

class ContactScreenNew extends StatefulWidget {
  const ContactScreenNew({super.key});

  @override
  State<ContactScreenNew> createState() => _ContactScreenNewState();
}

class _ContactScreenNewState extends State<ContactScreenNew> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
          backgroundColor: Globals.backgroundColor,
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Globals.backgroundColor,
                    image: DecorationImage(
                        image: AssetImage(AssetConfig.kBG), fit: BoxFit.fill)),
              ),
              SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: getDeviceHeight(context) * 0.1),
                        Text(
                          "Get in Touch",
                          style: GoogleFonts.playfairDisplay(
                              textStyle: const TextStyle(
                                  color: Globals.whiteColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: getDeviceHeight(context) * 0.05),
                        Text(
                          "Our Service",
                          style: GoogleFonts.playfairDisplay(
                              textStyle: const TextStyle(
                                  color: Globals.whiteColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: getDeviceHeight(context) * 0.03),
                      ],
                    ),
                    const HeaderScreen(
                      currentScren: "Contact us",
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
