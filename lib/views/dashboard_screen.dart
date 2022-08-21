import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/drawer.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            AssetConfig.kLogo,
                            height: getDeviceHeight(context) * 0.15,
                            width: getDeviceWidth(context) * 0.15,
                          ),
                          InkWell(
                              onTap: () {
                                scaffoldKey.currentState!.openEndDrawer();
                              },
                              child: Image.asset(AssetConfig.kMenuIcon))
                        ],
                      ),
                      SizedBox(height: getDeviceHeight(context) * 0.03),
                      Wrap(alignment: WrapAlignment.center, children: [
                        const Text("Diseñamos, ",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Globals.whiteColor)),
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 5,
                          ),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Globals.redColor,
                            width: 1.0,
                          ))),
                          child: const Text("Creamos,",
                              style: TextStyle(
                                  color: Globals.redColor,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const Text(" Somos ",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Globals.whiteColor)),
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 5,
                          ),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Globals.redColor,
                            width: 1.0,
                          ))),
                          child: const Text("una",
                              style: TextStyle(
                                  color: Globals.redColor,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const Text(" Agencia ",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Globals.whiteColor)),
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 5,
                          ),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Globals.redColor,
                            width: 1.0,
                          ))),
                          child: const Text("Creadora",
                              style: TextStyle(
                                  color: Globals.redColor,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold)),
                        )
                      ]),
                      SizedBox(height: getDeviceHeight(context) * 0.03),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('icons/flags/png/it.png',
                                  package: 'country_icons'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('icons/flags/png/es.png',
                                  package: 'country_icons'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('icons/flags/png/mx.png',
                                  package: 'country_icons'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('icons/flags/png/us.png',
                                  package: 'country_icons'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('icons/flags/png/sv.png',
                                  package: 'country_icons'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('icons/flags/png/br.png',
                                  package: 'country_icons'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('icons/flags/png/ar.png',
                                  package: 'country_icons'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('icons/flags/png/gr.png',
                                  package: 'country_icons'),
                            ),
                          ),
                          const Flexible(child: SizedBox())
                        ],
                      ),
                      SizedBox(height: getDeviceHeight(context) * 0.04),
                      const Text(
                        "We Convey Your Aspirations Into Visuals",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Globals.whiteColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: getDeviceHeight(context) * 0.04),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    width: getDeviceWidth(context) * 0.8,
                    color: Globals.redColor,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Ready To Work Together?",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Globals.whiteColor)),
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            color: Globals.blackColor,
                            width: getDeviceWidth(context) * 0.5,
                            child: const Text(
                              "Contact Us / Contáctenos",
                              style: TextStyle(
                                  color: Globals.whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          )
                        ]),
                  ),
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
            )),
          ],
        ),
        endDrawer: DrawerScreen(
          scaffoldKey: scaffoldKey,
        ));
  }
}
