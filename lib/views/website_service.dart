import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/asset_config.dart';
import 'constants.dart';
import 'drawer.dart';
import '../utils/globals.dart';

class WebsiteService extends StatefulWidget {
  const WebsiteService({super.key});

  @override
  State<WebsiteService> createState() => _WebsiteServiceState();
}

class _WebsiteServiceState extends State<WebsiteService> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<Map> recent = [
    {
      "name": "Don Chato",
      "image": AssetConfig.kWeb1,
      "website": "https://donchato.com/"
    },
    {
      "name": "El Camronero",
      "image": AssetConfig.kWeb2,
      "website": "https://elcamaronero-2.com/"
    },
  ];
  List<Map> popular = [
    {
      "name": "Tacos",
      "image": AssetConfig.kWeb3,
      "website": "https://tacosvalles.com/"
    },
    {
      "name": "Tommies",
      "image": AssetConfig.kWeb4,
      "website": "https://tommiescastaiccafe.com/"
    },
    {
      "name": "Swiss",
      "image": AssetConfig.kWeb5,
      "website": "https://swisscleanersylmar.com/"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globals.backgroundColor,
      key: scaffoldKey,
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
                  AssetConfig.kWebHome,
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
                      "Website Design",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "5 Results",
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
                          itemCount: recent.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Globals().launchIt(
                                    "website", recent[index]['website']);
                              },
                              child: SizedBox(
                                width: getDeviceWidth(context) * 0.45,
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
                                              fit: BoxFit.cover)),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      recent[index]['name'],
                                      maxLines: 2,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.w500),
                                      ),
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
                      height: getDeviceHeight(context) * 0.25,
                      child: ListView.builder(
                          itemCount: popular.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Globals().launchIt(
                                    "website", popular[index]['website']);
                              },
                              child: SizedBox(
                                width: getDeviceWidth(context) * 0.45,
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
                                              fit: BoxFit.cover)),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      popular[index]['name'],
                                      maxLines: 2,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Text(
                      "IMPORTANCE OF WEB DESIGN:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Your website design is important because your customers care about your design. Whether we realize it or not, we all respond to images, and good design is naturally compelling. Research shows that users will quickly rate your business based on images alone and will often stop using your website if it’s poorly designed.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "What do you think of the company when you see a website design that looks outdated? Research shows that customers rate companies based on how their websites look. A website’s appearance can either make a good first impression or turn your customers away. First impressions are strong. When it comes to first impressions, users form first impressions almost immediately. According to Google research, it only takes 50 Ms or 0.05 seconds. During this short window, the user cannot read the website neither click on anything. An attractive visual design influences the first impression. Therefore, all businesses are recommended to have an effective web design. Our professional website developers are skilled and know how to create designs that can appeal to consumers and also align with your brand personality. An effective web design for the restaurant is the best web design that can create a strong brand image in the consumer’s mind.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "WEB DESIGN FOR RESTAURANTS:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "A website for the restaurant business holds significant importance. You can provide customers with basic information about your restaurant through your website, including hours of operation, directions, and payment options. Answering these basic questions can help managers and employees spend less time on the phone. You can also inform your customers about promotions such as lunch sales, pre-show menus, and Christmas sales.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "To succeed in this competitive world, it is highly important to have a web design that differentiates you from your competitors and highlights what makes you stand out. If you do not have a website yet or the design is not up to the mark reach out. Our web designer will work to give you satisfactory results. We will create a user-friendly website that is not just easy to use but will also leave an impression on consumers’ minds. We create designs that are original and have a unique persona.",
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
