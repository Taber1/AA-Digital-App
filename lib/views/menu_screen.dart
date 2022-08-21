import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/drawer.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

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
                  image: AssetImage(AssetConfig.kMenuDesignBG),
                  fit: BoxFit.cover)),
          child: const Text(
            "Menu Design",
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
                    descrip:
                        "Get your tailor-made menu and all the facilities and"),
                servicesDescription(
                    descrip:
                        "amenities just one click away. From deciding the"),
                servicesDescription(
                    descrip:
                        "cost to accumulating per plate cost. From handling"),
                servicesDescription(
                    descrip:
                        "expenses to cultivating revenues and profit we make"),
                servicesDescription(
                    descrip: "sure to offer the best results to you."),
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
