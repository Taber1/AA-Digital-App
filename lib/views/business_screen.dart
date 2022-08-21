import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/drawer.dart';
import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

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
                    image: AssetImage(AssetConfig.kBusinessBG),
                    fit: BoxFit.cover)),
            child: const Text(
              "Business\nConsulting",
              textAlign: TextAlign.center,
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
                  SizedBox(height: getDeviceHeight(context) * 0.35),
                  Image.asset(AssetConfig.kBusinessCenter),
                  SizedBox(height: getDeviceHeight(context) * 0.02),
                  servicesDescription(
                      descrip:
                          "We as business experts can assist your organization"),
                  servicesDescription(
                      descrip: "With conquering issues, developing incomes"),
                  servicesDescription(
                      descrip:
                          "Incrementing its client base, and so forth if you have a"),
                  servicesDescription(
                      descrip: "thought that you need to adapt."),
                  SizedBox(height: getDeviceHeight(context) * 0.1),
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
