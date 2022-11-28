import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/asset_config.dart';
import '../utils/globals.dart';
import 'constants.dart';
import 'header.dart';

class MediaMarketingService extends StatelessWidget {
  const MediaMarketingService({super.key});

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
                  AssetConfig.kMediaMarketingHome,
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
                      "Media Marketing",
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
                      "INCREASE YOUR REACH:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Social media is the most powerful tool today to connect to your audience but at the same time, one wrong move can be disastrous for your business. To sustain in the long run, one requires an effective media marketing plan that can help business growth. The term “media marketing” refers to marketing initiatives focused on reaching audiences through various forms of media. This may include online websites, Social Media channels and Digital platforms. Social media can be used to actively engage your business in the marketplace. Your audience can get to know, connect with, and trust you through your posts, interact with other users, and directly message you on your profile.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Through our media marketing plan, we assist you to bring more people to your website and convert them into customers through advertising on your profile links, posts, and blog posts. We also generate leads and conversions directly on these platforms with features such as Instagram/Facebook shops, direct messages, call-to-action buttons on your profile, and booking functionality. Our strategies will allow you to build your visual identity and increase brand awareness. The increased brand awareness will improve campaign performance. Our strategies will help your business to connect, get feedback, participate in conversations, and communicate directly with people by opening up direct and indirect lines of communication with your customers.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "BE CAUTIOUS:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "We as a media marketing agency establish a roadmap for executing your social media marketing plan.  All the tasks are organized properly so we can assess progress and allocate resources effectively. The major mistake we make while drafting a plan is we are always looking for ways to appear in other people’s feeds but overlook the value of our feeds. Therefore, we follow and keep an eye on our competitors to get ideas for unique strategies and see where we can improve. Media marketing is a tough nut to crack. It may be a widespread tool to reach out to your audience but one can only grow if the strategies are right. If you are too busy with your other business operations, let us handle your media marketing. Our media marketing consultants create the best plans based on your target audience and reach them. Our focus is to convert your leads into actual consumers. Our experienced professionals will give you results that can show noticeable growth on your progress graph.",
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
