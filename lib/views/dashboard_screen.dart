import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/routes/route_names.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
          key: scaffoldKey,
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
                          "Find the solution to your business problems",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            serviceCard(
                                context: context,
                                image: AssetConfig.kWebHome,
                                title: "Websites and Social Media"),
                            serviceCard(
                                context: context,
                                image: AssetConfig.kMenuHome,
                                title: "Restaurant Menu Design"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            serviceCard(
                                context: context,
                                image: AssetConfig.kFoodHome,
                                title: "Food Photography"),
                            serviceCard(
                                context: context,
                                image: AssetConfig.kBusinessHome,
                                title: "Business Consultation"),
                          ],
                        ),
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

  Widget serviceCard(
      {required BuildContext context,
      required String image,
      required String title}) {
    return GestureDetector(
      onTap: () {
        if (title.contains("Web")) {
          Navigator.pushReplacementNamed(context, webNsocail);
        } else if (title.contains("Menu")) {
          Navigator.pushReplacementNamed(context, menuDesign);
        } else if (title.contains("Food")) {
          Navigator.pushReplacementNamed(context, foodPhotography);
        } else {
          Navigator.pushReplacementNamed(context, businessConsulting);
        }
      },
      child: SizedBox(
        height: getDeviceHeight(context) * 0.28,
        width: getDeviceWidth(context) * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                height: getDeviceHeight(context) * 0.15,
                width: getDeviceWidth(context) * 0.4,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: getDeviceHeight(context) * 0.01),
            Text(title,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Globals.whiteColor,
                      fontSize: 20,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w300),
                )),
            SizedBox(height: getDeviceHeight(context) * 0.005),
            Text("20 Results",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w300),
                ))
          ],
        ),
      ),
    );
  }
}
