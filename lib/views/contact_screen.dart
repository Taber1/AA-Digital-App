import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/drawer.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Globals.greyColorDark,
      body: Stack(children: [
        Container(
          height: getDeviceHeight(context) * 0.4,
          width: getDeviceWidth(context),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetConfig.kContactBG),
                  fit: BoxFit.cover)),
          child: const Text(
            "Contact Us",
            style: TextStyle(
                color: Globals.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
        ),
        SingleChildScrollView(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 30),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: getDeviceHeight(context) * 0.43),
                  const Text(
                    "Our contact address",
                    style: TextStyle(
                        color: Globals.redColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Quick Contact Address",
                    style: TextStyle(
                        color: Globals.whiteColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "To get the finest service you can contact us through the givent details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(188, 255, 255, 255),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: getDeviceHeight(context) * 0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          contactCard(
                              "Phone",
                              "+818-259-0701",
                              AssetConfig.kContactPhoneIcon,
                              getDeviceHeight(context) * 0.1,
                              getDeviceWidth(context) * 0.45),
                          contactCard(
                              "Email address",
                              "info@aadigitalsolution.com",
                              AssetConfig.kContactEmailIcon,
                              getDeviceHeight(context) * 0.1,
                              getDeviceWidth(context) * 0.45)
                        ],
                      ),
                      contactCard(
                          "Address",
                          "17810 Merridy St. Suite # 209 Northridge, Ca. 91325",
                          AssetConfig.kContactAddressIcon,
                          getDeviceHeight(context) * 0.2,
                          getDeviceWidth(context) * 0.5)
                    ],
                  ),
                  SizedBox(height: getDeviceHeight(context) * 0.1),
                  const Text(
                    "Get In Touch",
                    style: TextStyle(
                        color: Globals.whiteColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Name / Nombre",
                              style: TextStyle(color: Globals.whiteColor)),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: getDeviceWidth(context) * 0.27,
                            height: getDeviceHeight(context) * 0.05,
                            child: const TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Globals.blackColor,
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Email / correo electrónico",
                              style: TextStyle(color: Globals.whiteColor)),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: getDeviceWidth(context) * 0.4,
                            height: getDeviceHeight(context) * 0.05,
                            child: const TextField(
                              decoration: InputDecoration(
                                fillColor: Globals.blackColor,
                                filled: true,
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Service / Servició",
                              style: TextStyle(color: Globals.whiteColor)),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: getDeviceWidth(context) * 0.27,
                            height: getDeviceHeight(context) * 0.05,
                            child: const TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Globals.blackColor,
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: getDeviceHeight(context) * 0.02),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Message / Mensaje",
                        style: TextStyle(color: Globals.whiteColor)),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: getDeviceWidth(context),
                    child: const TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Globals.blackColor,
                          border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
          top: 80,
          right: 15,
          child: InkWell(
              onTap: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
              child: Image.asset(AssetConfig.kMenuIcon)),
        ),
      ]),
      endDrawer: DrawerScreen(scaffoldKey: scaffoldKey),
    );
  }

  Widget contactCard(
      String title, String descrip, String icon, double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Globals.blackColor,
          border: Border.all(color: Globals.greyColorLight, width: 2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(icon),
          ),
          Text(
            title,
            style: const TextStyle(
                color: Globals.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Flexible(
            child: Text(
              descrip,
              style: const TextStyle(
                  color: Globals.redColor, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
