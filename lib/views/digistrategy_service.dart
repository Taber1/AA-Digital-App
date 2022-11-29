import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/asset_config.dart';
import '../utils/globals.dart';
import 'constants.dart';
import 'drawer.dart';

class DigiStrategyService extends StatelessWidget {
  const DigiStrategyService({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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
                    colors: [Colors.black, Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  AssetConfig.kDigiStrategyHome,
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
                    SizedBox(height: getDeviceHeight(context) * 0.45),
                    Text(
                      "Digital Strategy",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(height: getDeviceHeight(context) * 0.03),
                    Text(
                      "KEEPING YOUR GOALS AND PROGRESS ALIGNED",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Most modern businesses recognize the importance of digital strategy and online presence. However, many companies continue to implement these changes in stages without clear guidance. A digital strategy is the best way to stay ahead of the competition, capitalize on current trends, and prepare for the next innovations. The term refers to the strategy of using digital initiatives to achieve organizational goals. A digital business strategy may seem simple, but its successful implementation requires knowledge and experience and most industries define a digital strategy differently.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "For example, the marketing department looks at it through its web channels such as email and social media. Financial experts, on the other hand, consider online learning tools. Data analytics for operations teams, cloud for IT professionals, and more. The complex challenge of aligning all these desperate areas with digital and overall business plans often causes companies to exceed or even fail to meet their goals. For this purpose, you need an expert that can help you with your digital strategies that can align all your department and bring them on common ground. AA Digital Solution as a digital strategy agency has the ability and skills that can help you in the best way possible to draft a strategy framework that keeps your business progress and business goals aligned.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "PLAN EACH MOVE EFFICIENTLY:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Any organization can benefit from having a well-defined plan. It’s important to remember that while digital tools can transform your business, they should be viewed as helpful tools. Going all out with every new tech trend is not the way to solve the problem. Doing so will only do more harm than good. We perform our research to understand what tools and methods can be employed for your business that can bring out the best results. Our specialists keenly observe and understand the nature of your business and its requirement and then devise a plan that best fits your business goals.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Our digital strategy consultants propose digital strategy ideas and templates that help you see the big picture and identify where digital options can be used to increase efficiency and effectiveness. We use this plan to reduce waste, keep departments on track, track progress, and make necessary adjustments required in a business.",
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
