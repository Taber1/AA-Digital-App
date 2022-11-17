import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/asset_config.dart';
import 'header.dart';

class BusinessService extends StatefulWidget {
  const BusinessService({super.key});

  @override
  State<BusinessService> createState() => _BusinessServiceState();
}

class _BusinessServiceState extends State<BusinessService> {
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
                  AssetConfig.kBusinessHome,
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
                      "Business\nConsultation",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "20 Results",
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
                      height: getDeviceHeight(context) * 0.25,
                      child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
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
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2019/09/09/08/23/internet-4463031_960_720.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  Text(
                                    "Tacos Valley Truck",
                                    maxLines: 2,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w300),
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
                      height: getDeviceHeight(context) * 0.25,
                      child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
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
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2019/09/09/08/23/internet-4463031_960_720.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  Text(
                                    "Tacos Valley Truck",
                                    maxLines: 2,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w300),
                                    ),
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
