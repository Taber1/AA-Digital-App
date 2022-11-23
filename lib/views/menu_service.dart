import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/asset_config.dart';
import '../utils/globals.dart';
import 'constants.dart';
import 'header.dart';

class MenuService extends StatefulWidget {
  const MenuService({super.key});

  @override
  State<MenuService> createState() => _MenuServiceState();
}

class _MenuServiceState extends State<MenuService> {
  List<Map> recent = [
    {"name": "Tacos Valley Truck", "image": AssetConfig.kMenu1},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kMenu2},
  ];
  List<Map> popular = [
    {"name": "Tacos Valley Truck", "image": AssetConfig.kMenu3},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kMenu4},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Stack(
            children: [
              ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  AssetConfig.kMenuHome,
                  height: getDeviceHeight(context) * 0.45,
                  width: getDeviceWidth(context),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: getDeviceHeight(context) * 0.4),
                    Text(
                      "Menu Design",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "4 Results",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(height: getDeviceHeight(context) * 0.05),
                    Text(
                      "Recent",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    SizedBox(height: getDeviceHeight(context) * 0.01),
                    SizedBox(
                      height: getDeviceHeight(context) * 0.2,
                      child: ListView.builder(
                          itemCount: recent.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: getDeviceWidth(context) * 0.45,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print('sd');
                                    },
                                    child: Container(
                                      height: getDeviceHeight(context) * 0.15,
                                      width: getDeviceWidth(context) * 0.4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  recent[index]['image']),
                                              fit: BoxFit.fill)),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Text(
                      "Popular",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    SizedBox(height: getDeviceHeight(context) * 0.01),
                    SizedBox(
                      height: getDeviceHeight(context) * 0.2,
                      child: ListView.builder(
                          itemCount: popular.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: getDeviceWidth(context) * 0.45,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: getDeviceHeight(context) * 0.15,
                                    width: getDeviceWidth(context) * 0.4,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                popular[index]['image']),
                                            fit: BoxFit.fill)),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ],
          )),
          const Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: HeaderScreen(
              currentScren: "Contact us",
            ),
          ),
        ],
      ),
    );
  }
}
