import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:aa_digital/views/drawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "https://cdn.pixabay.com/photo/2015/02/02/11/09/office-620822__340.jpg",
      "https://cdn.pixabay.com/photo/2018/03/10/12/00/teamwork-3213924__340.jpg",
      "https://cdn.pixabay.com/photo/2017/01/14/10/56/people-1979261__340.jpg",
      "https://cdn.pixabay.com/photo/2015/01/08/18/27/startup-593341__340.jpg",
      "https://cdn.pixabay.com/photo/2015/01/09/11/08/startup-594090__340.jpg"
    ];
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final controller = CarouselController();
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Globals.greyColorDark,
          body: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
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
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Globals.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
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
              Align(
                heightFactor: 0.2,
                child: Image.asset(AssetConfig.kMenuDesignCenter),
              ),
              SizedBox(height: getDeviceHeight(context) * 0.1),
              servicesDescription(
                  descrip:
                      "Get your tailor-made menu and all the facilities and"),
              servicesDescription(
                  descrip: "amenities just one click away. From deciding the"),
              servicesDescription(
                  descrip:
                      "cost to accumulating per plate cost. From handling"),
              servicesDescription(
                  descrip:
                      "expenses to cultivating revenues and profit we make"),
              servicesDescription(
                  descrip: "sure to offer the best results to you."),
              SizedBox(height: getDeviceHeight(context) * 0.1),
              const Text(
                "Our Project",
                style: TextStyle(
                    color: Globals.redColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "What we've been working on",
                style: TextStyle(
                    color: Globals.whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  height: getDeviceHeight(context) * 0.2,
                  viewportFraction: 0.3,
                ),
                items: list
                    .map((item) => Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(item))),
                        ))
                    .toList(),
              ),
              SizedBox(height: getDeviceHeight(context) * 0.02),
              InkWell(
                onTap: () {
                  controller.nextPage();
                },
                child: Image.asset(AssetConfig.kSeePortfolio),
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
            ]),
          ),
          endDrawer: DrawerScreen(
            scaffoldKey: scaffoldKey,
          )),
    );
  }
}
