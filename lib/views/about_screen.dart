import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/drawer.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

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
                    image: AssetImage(AssetConfig.kAboutBG),
                    fit: BoxFit.cover)),
            child: const Text(
              "Our Work",
              style: TextStyle(
                  color: Globals.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: getDeviceHeight(context) * 0.42),
                  const Text(
                    "Our Project",
                    style: TextStyle(
                        color: Globals.redColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const Text(
                    "What we've been working on",
                    style: TextStyle(
                        color: Globals.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(height: getDeviceHeight(context) * 0.03),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          color: Globals.redColor,
                          alignment: Alignment.center,
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              "Business Consulting",
                              style: TextStyle(
                                  color: Globals.whiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(right: 10),
                          color: Globals.blackColor,
                          alignment: Alignment.center,
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              "Food Photography",
                              style: TextStyle(
                                  color: Globals.whiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(right: 10),
                          color: Globals.blackColor,
                          alignment: Alignment.center,
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              "Menu Design",
                              style: TextStyle(
                                  color: Globals.whiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    width: getDeviceWidth(context) * 0.5,
                    color: Globals.blackColor,
                    alignment: Alignment.center,
                    child: const FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "Web & Social Media Design",
                        style: TextStyle(
                            color: Globals.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: getDeviceHeight(context) * 0.4,
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            alignment: Alignment.center,
                            child: Image.asset(AssetConfig.kAboutMenu1)),
                      ),
                      Expanded(
                        child: Container(
                            height: getDeviceHeight(context) * 0.4,
                            margin: const EdgeInsets.only(right: 10),
                            alignment: Alignment.center,
                            child: Image.asset(
                              AssetConfig.kAboutMenu2,
                              fit: BoxFit.fitWidth,
                            )),
                      ),
                      Expanded(
                        child: Container(
                            height: getDeviceHeight(context) * 0.4,
                            alignment: Alignment.center,
                            child: Image.asset(AssetConfig.kAboutMenu3)),
                      ),
                    ],
                  ),
                  Container(
                    width: getDeviceWidth(context),
                    color: Globals.blackColor,
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "Copyright © AA Digital Solution",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
        endDrawer: DrawerScreen(
          scaffoldKey: scaffoldKey,
        ));
  }
}
