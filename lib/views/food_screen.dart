import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/drawer.dart';
import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

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
                  image: AssetImage(AssetConfig.kFoodBG), fit: BoxFit.cover)),
          child: const Text(
            "Food\nPhotography",
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
                Image.asset(AssetConfig.kFoodCenter),
                SizedBox(height: getDeviceHeight(context) * 0.02),
                servicesDescription(
                    descrip:
                        "We offer you a still life photography classification to"),
                servicesDescription(
                    descrip:
                        "make appealing still life photos of food. We have a"),
                servicesDescription(
                    descrip:
                        "specialization in business photography, the results of"),
                servicesDescription(
                    descrip: "Which are utilized in ads, magazines, bundling,"),
                servicesDescription(descrip: "menus, or cookbooks."),
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
