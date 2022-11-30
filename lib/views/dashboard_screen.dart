import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/routes/route_names.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
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
                              image: AssetConfig.kFoodHome,
                              title: "Photography"),
                          serviceCard(
                              context: context,
                              image: AssetConfig.kMenuHome,
                              title: "Menu Design"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          serviceCard(
                              context: context,
                              image: AssetConfig.kWebHome,
                              title: "Web Design"),
                          serviceCard(
                              context: context,
                              image: AssetConfig.kDigiPresenceHome,
                              title: "Digital Presence"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          serviceCard(
                              context: context,
                              image: AssetConfig.kMediaMarketingHome,
                              title: "Media Marketing"),
                          serviceCard(
                              context: context,
                              image: AssetConfig.kDigiStrategyHome,
                              title: "Digital Strategy"),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          serviceCard(
                              context: context,
                              image: AssetConfig.kRisingCostHome,
                              title: "Rising Cost"),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, onlinePayment);
                            },
                            child: SizedBox(
                              height: getDeviceHeight(context) * 0.35,
                              width: getDeviceWidth(context) * 0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AssetConfig.kOnlinePaymentHome,
                                      height: getDeviceHeight(context) * 0.15,
                                      width: getDeviceWidth(context) * 0.4,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                      height: getDeviceHeight(context) * 0.01),
                                  Text(
                                      "Online Payment System and Credit Card Processing",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                            color: Globals.whiteColor,
                                            fontSize: 20,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.w300),
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Globals.whiteColor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          scaffoldKey.currentState!.openEndDrawer();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 125, 125, 125),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.menu,
                            color: Globals.whiteColor,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        endDrawer: const DrawerScreen(),
      ),
    );
  }

  Widget serviceCard(
      {required BuildContext context,
      required String image,
      required String title}) {
    return GestureDetector(
      onTap: () {
        if (title.contains("Web")) {
          Navigator.pushNamed(context, webNsocail);
        } else if (title.contains("Menu")) {
          Navigator.pushNamed(context, menuDesign);
        } else if (title.contains("Photography")) {
          Navigator.pushNamed(context, foodPhotography);
        } else if (title.contains("Presence")) {
          Navigator.pushNamed(context, digiPresence);
        } else if (title.contains("Strategy")) {
          Navigator.pushNamed(context, digiStrategy);
        } else if (title.contains("Marketing")) {
          Navigator.pushNamed(context, mediaMarketing);
        } else if (title.contains("Rising")) {
          Navigator.pushNamed(context, risingCost);
        } else {
          Navigator.pushNamed(context, businessConsulting);
        }
      },
      child: SizedBox(
        height: getDeviceHeight(context) * 0.28,
        width: getDeviceWidth(context) * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Globals.whiteColor,
                      fontSize: 20,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w300),
                )),
            // SizedBox(height: getDeviceHeight(context) * 0.005),
            // Text("20 Results",
            //     style: GoogleFonts.montserrat(
            //       textStyle: const TextStyle(
            //           color: Globals.greyColor,
            //           fontSize: 16,
            //           letterSpacing: 0.5,
            //           fontWeight: FontWeight.w300),
            //     ))
          ],
        ),
      ),
    );
  }
}
