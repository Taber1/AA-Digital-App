import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/asset_config.dart';
import '../utils/globals.dart';
import 'constants.dart';
import 'drawer.dart';
import 'menu_preview_screen.dart';

class MenuService extends StatefulWidget {
  const MenuService({super.key});

  @override
  State<MenuService> createState() => _MenuServiceState();
}

class _MenuServiceState extends State<MenuService> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<Map> recent = [
    {
      "name": "Tacos Valley Truck",
      "image": AssetConfig.kMenu1,
      "full": AssetConfig.kMenu1Full
    },
    {
      "name": "Tacos Valley Truck",
      "image": AssetConfig.kMenu2,
      "full": AssetConfig.kMenu2Full
    },
  ];
  List<Map> popular = [
    {
      "name": "Tacos Valley Truck",
      "image": AssetConfig.kMenu3,
      "full": AssetConfig.kMenu3Full
    },
    {
      "name": "Tacos Valley Truck",
      "image": AssetConfig.kMenu4,
      "full": AssetConfig.kMenu4Full
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
                      colors: [
                        Globals.blackColor,
                        Globals.blackColor,
                        Globals.transparentColor
                      ],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
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
                              color: Globals.greyColor,
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MenuPreviewScreen(
                                                        imageName: recent[index]
                                                            ['full'])));
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
                                                fit: BoxFit.cover)),
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
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MenuPreviewScreen(
                                                  imageName: popular[index]
                                                      ['full'])));
                                },
                                child: SizedBox(
                                  width: getDeviceWidth(context) * 0.45,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      Text(
                        "CREATING TEMPTATIONS:",
                        style: GoogleFonts.playfairDisplay(
                            textStyle: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Globals.whiteColor)),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "The main means of representing you is your menu. It tells your customers exactly what you serve and what your specials are. A lasting impression on the customers long after the waiter or waitress has left. Brand your restaurant in a way that your customers will be happy to be there and come back and tell their friends and family about it.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                            textStyle:
                                const TextStyle(color: Globals.whiteColor)),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "A menu is as important as delicious food. A menu must be designed with simplicity and clarity on the graphics. A complete description of the dish you will serve to your customer must be clearly written. A menu should be revised a minimum of 05 times each year. It will assist to bring your most popular dishes and every time/daily/weekly specials on the top.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                            textStyle:
                                const TextStyle(color: Globals.whiteColor)),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Likewise, proper results cannot be achieved without proper research. To create the ideal menu, it is necessary to collect information from various sources. First, look at your numbers which include your restaurant’s revenue and the potential marketing strategies with the financial figures. Then look at your competitors. Explore their menu, marketing strategy, and website to see where they excel and how they can compete. Also, read industry sources (Industry journals, published research) to assess trends and success stories. The restaurant owner must research the available vendors to see how they are harvesting/procuring the ingredients. This can be a hectic process to go through. But AA Digital Solution is always there to help you. We can help you go through the process of menu designing while you can operate your restaurant smoothly. Menu design might seem a simpler task at hand but comes with great responsibility. AA digitals solution can take over the responsibility and help reduce your burden by offering menu design services.",
                        style: GoogleFonts.montserrat(
                            textStyle:
                                const TextStyle(color: Globals.whiteColor)),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "CREATING A DINING EXPERIENCE:",
                        style: GoogleFonts.playfairDisplay(
                            textStyle: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Globals.whiteColor)),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Menu designing for restaurants is not all about the dishes but also about creating a dining experience. Being in this field and having the experience we understand that your menu is not all about what you serve but also about how you create an impression on the customer and a dining experience that brings the customer back to your restaurants. The menu reflects your restaurant’s personality. If you are willing to create a better impression and experience for clients, you need professional helpers that can help you with the best outcomes and results.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                            textStyle:
                                const TextStyle(color: Globals.whiteColor)),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "AA Digital Solutions offer complete research and study while designing the menu for your diner and help you understand what you should offer. From salad on the menu to starters, main course, and dessert each should be well thought off and should offer a unique experience to your clients. We do our best to give you outcomes that will increase your customer reach and bring more feet to your eatery. All you need to do is let us be in charge of your menu design templates and you will see a noticeable change in your business growth.",
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
            ),
          ),
          Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Globals.whiteColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      scaffoldKey.currentState!.openEndDrawer();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 125, 125, 125),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.menu,
                        color: Globals.whiteColor,
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
      endDrawer: const DrawerScreen(),
    );
  }
}
