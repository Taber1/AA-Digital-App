import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/asset_config.dart';
import '../utils/globals.dart';
import 'constants.dart';
import 'header.dart';

class DigiPresenceService extends StatelessWidget {
  const DigiPresenceService({super.key});

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
                  AssetConfig.kDigiPresenceHome,
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
                      "Digital Presence",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    // Text(
                    //   "20 Results",
                    //   style: GoogleFonts.montserrat(
                    //     textStyle: const TextStyle(
                    //         color: Colors.grey,
                    //         fontSize: 18,
                    //         letterSpacing: 0.5,
                    //         fontWeight: FontWeight.w300),
                    //   ),
                    // ),
                    // SizedBox(height: getDeviceHeight(context) * 0.05),
                    // Text(
                    //   "Recent",
                    //   style: GoogleFonts.playfairDisplay(
                    //       textStyle: const TextStyle(
                    //           fontSize: 25,
                    //           fontWeight: FontWeight.bold,
                    //           letterSpacing: 1,
                    //           color: Globals.whiteColor)),
                    // ),
                    SizedBox(height: getDeviceHeight(context) * 0.03),
                    Text(
                      "STAY CONNECTED:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Your company’s online presence is called a digital presence. Web presence can be summarized as the impression a brand makes online through content, websites, search engines, and other digital media and platforms. A web presence consists of several different components. The ability to easily showcase your products and services is one of the greatest benefits of a strong digital presence. Online portfolios, social media photo albums, videos uploaded to YouTube, and many other options make it easy to highlight your company’s offerings. There are so many ways to connect with the public that it’s not difficult to become an expert in your field. Businesses find it difficult to always stay in touch with their customers. AA Digital Solutions help you with digital presence strategy and always stay connected to your clients.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "With a digital presence, customers can find your company more easily. When customers search for a company or product, they mostly go online. Even if you run a physical store, you need a digital presence to connect with your customers. Some customers start their shopping experience online and complete it in person, while others do both. Regardless, many new customers don’t want to spend long hours searching for a company, product, or service. Instead, they should be able to find you with a simple Google search. Therefore, a strong digital presence is what you need.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "BUILDING TRUST DIGITALLY:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "customers believe in your brand. Marketing a brand can be difficult depending on your niche. However, building a strong digital presence does not make developing a brand difficult. It’s completely free to promote your brand using social media and the internet. Well, that just gets you before you start using paid targeted advertising. One of the benefits of having a digital presence is that people thousands of miles away can easily find you. is.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Both businesses and individuals use social media to foster relationships with friends and followers. Brands get noticed when their business posts frequently, regardless of social media platform. This voice will help give your business a personal impression and make it more identifiable to your customers. Social media allows businesses to get to know their customers. If you are struggling with the issue of having a strong digital presence AA Digital Solutions always offers you support and give you an online existence that will always keep you connected to your clients.",
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
