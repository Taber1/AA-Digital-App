import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/drawer.dart';
import 'package:flutter/material.dart';

class WebNSocialScreen extends StatelessWidget {
  const WebNSocialScreen({Key? key}) : super(key: key);

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
                  image: AssetImage(AssetConfig.kWebSocialBG),
                  fit: BoxFit.cover)),
          child: const Text(
            "Web &\nSocial Media Design",
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
                Image.asset(AssetConfig.kWebSocialCenter),
                SizedBox(height: getDeviceHeight(context) * 0.02),
                servicesDescription(
                    descrip: "Being in a digital world, we create the visual"),
                servicesDescription(
                    descrip:
                        "substance which is utilized for showcasing advanced"),
                servicesDescription(
                    descrip: "endeavors, it is presented and showcased via"),
                servicesDescription(
                    descrip: "Website platforms and Social media."),
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
      endDrawer: DrawerScreen(scaffoldKey: scaffoldKey),
    );
  }
}
