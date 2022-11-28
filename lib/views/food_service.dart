import 'package:aa_digital/views/image_preview_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/asset_config.dart';
import '../utils/globals.dart';
import 'constants.dart';
import 'header.dart';

class FoodService extends StatefulWidget {
  const FoodService({super.key});

  @override
  State<FoodService> createState() => _FoodServiceState();
}

class _FoodServiceState extends State<FoodService> {
  List<Map> recent = [
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto14},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto15},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto16},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto17},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto18},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto19},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto20},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto21},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto22},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto23},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto24},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto25},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto26},
  ];
  List<Map> popular = [
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto1},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto2},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto3},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto4},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto5},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto6},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto7},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto8},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto9},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto10},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto11},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto12},
    {"name": "Tacos Valley Truck", "image": AssetConfig.kPhoto13},
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
                  AssetConfig.kFoodHome,
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
                      "Photography",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "26 Results",
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
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ImagePreviewScreen(
                                                  imageName: recent[index]
                                                      ['image'])));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
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
                                  ],
                                ),
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
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: getDeviceWidth(context) * 0.45,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ImagePreviewScreen(
                                                  imageName: popular[index]
                                                      ['image'])));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getDeviceHeight(context) * 0.15,
                                      width: getDeviceWidth(context) * 0.4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  popular[index]['image']),
                                              fit: BoxFit.fill)),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Text(
                      "SHOWING THE WORLD, A NEW YOU:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Unless you’re a graphic designer, your company likely sells products online primarily through images. But what if the pictures aren’t good enough? Bad photos can lose clients daily! Product photography has a huge impact on sales and customer behaviour. No matter the size or scope of your business, targeted photo campaigns make a more established impression when you’re selling something with a strong visual message. Now you don’t need to worry as AA Digital Solution provides you with the best angles that help you with the finest picture qualities that are engaging and fascinating.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "A visual representation always appeals to the eye. But an accurate visual representation serves the best. We do the best photography of your food and restaurant, all your services, events and much more through our photography. Our photography services are designed in a manner to give you an original and attractive look. We give you the finest food photography that will appeal to customers and trigger them to order your food. Food photography basically sounds like photos taken but capturing images in the best lighting and use it accurately to promote your restaurant services on social media and websites. We guarantee that our photography especially our restaurant photography will always be up to the mark and will help you attain more customers digitally. Our services are designed to maximize the reach of your business, therefore we put in all our dedication and soul to bring out the best pictures that perfectly fit your business nature and its requirements.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "COVERING EVENTS:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Our photography services are not just limited to product photography, we also offer our services to make your events memorable be it any event photography or corporate team photography. We put in all our zeal and zest to capture the moment in a way that leaves an everlasting impression in your mind. We cover all types of events and ensure to work according to the nature of the event we cover. Our focus is to give our best in everything we do to keep our clients satisfied. If you are looking for someone to trust with your events AA digitals is the perfect choice for your business.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Let us take the charge while you sit back and relax. We will surely give you outcomes that are worth trusting. AA Digital Solutions is a team of experts who are just not skilled in their field but are also experienced and know how to bring out paramount results. Trust us and we will never let you down.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 50),
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
