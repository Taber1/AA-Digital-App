import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/routes/route_names.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String cardColor = "Business Consulting";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Globals.blackColor,
        body: Stack(
          children: [
            Container(
                height: getDeviceHeight(context) * 0.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetConfig.kHomeBG),
                        fit: BoxFit.cover))),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: getDeviceHeight(context) * 0.15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(children: [
                      SizedBox(height: getDeviceHeight(context) * 0.1),
                      const Text(
                        "What we can do for you",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Globals.redColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: getDeviceHeight(context) * 0.02),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          "Services provided for you",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Globals.whiteColor,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: getDeviceHeight(context) * 0.07),
                      InkWell(
                        onTap: () => scaffoldKey.currentState!.openEndDrawer(),
                        child: servicesCard(
                            context: context,
                            title: "Business Consulting",
                            descrip:
                                "Business Consulting: Customized advice according your business to help you increase sales, reduce your food and labor costs, to grow in profits, and increase traffic.",
                            icon: AssetConfig.kBusinessIcon),
                      ),
                      servicesCard(
                          context: context,
                          title: "Food-Photography",
                          descrip:
                              "Food Photography: Specializes in food decoration and plate presentation, we make the meal appeal to your eyes.",
                          icon: AssetConfig.kFoodPhotoIcon),
                      servicesCard(
                          context: context,
                          title: "Web & Social Media Design",
                          descrip:
                              "Website Design: Accelerate your online presence and make online reservations for ordering your food from the web.",
                          icon: AssetConfig.kWebSocialIcon),
                      servicesCard(
                          context: context,
                          title: "Menu Design",
                          descrip:
                              "Menu Design: From creating the perfect menu to its pricing, costing per plate, and accumulating profits. Just leave the hurdles to us!",
                          icon: AssetConfig.kMenuDesignIcon)
                    ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, top: 30),
                    child: Text(
                      "Copyright © AA Digital Solution",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ],
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
          ],
        ),
        endDrawer: DrawerScreen(
          scaffoldKey: scaffoldKey,
        ),
      ),
    );
  }

  Widget servicesCard({
    required BuildContext context,
    required String title,
    required String descrip,
    required String icon,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          cardColor = "Business Consulting";
          if (title == "Business Consulting") {
            Navigator.pushReplacementNamed(context, businessConsulting);
          } else if (title == "Food-Photography") {
            cardColor = "Food-Photography";
            Navigator.pushReplacementNamed(context, foodPhotography);
          } else if (title == "Menu Design") {
            cardColor = "Menu Design";
            Navigator.pushReplacementNamed(context, menuDesign);
          } else {
            cardColor = "Web & Social Media Design";
            Navigator.pushReplacementNamed(context, webNsocail);
          }
        });
      },
      child: Container(
        constraints: BoxConstraints(
          maxHeight: getDeviceHeight(context) * 0.2,
          minHeight: getDeviceHeight(context) * 0.17,
        ),
        width: getDeviceWidth(context),
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(bottom: 10),
        color: cardColor == title ? Globals.redColor : Globals.greyColorDark,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Globals.whiteColor),
                  ),
                ),
                Image.asset(icon)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Text(
                descrip,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Globals.whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
