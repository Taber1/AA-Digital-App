import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/asset_config.dart';
import '../utils/globals.dart';
import 'constants.dart';
import 'header.dart';

class OnlinePaymentService extends StatelessWidget {
  const OnlinePaymentService({super.key});

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
                  AssetConfig.kOnlinePaymentHome,
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
                      "Online Payment System and Credit Card Processing",
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
                      "MAKE IT EASY:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Online payments have many advantages. However, like most online merchants, you may have had problems with online payments in the past. Online payment systems for restaurants can be troublesome, especially when customers keep getting rejected when trying to complete transactions online. Starting an online business is exciting but it can be difficult to ensure that your online business offers valuable and compelling products and services while being able to collect payments easily. AA digital Solution believes in bringing solutions to your problems. We help our customers with proper and secure online payment systems for restaurants that can help them grow. Our idea is to create a safe network between both parties and ensure the results are satisfactory.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Online payment methods may be a hectic and a chaotic process for people. There are a lot of reasons that cause resistance while making an online payment. A mismanaged online payment platform usually results in a lack of trust in consumers over a brand and can lead to serious damage to the business. Therefore, to ensure that your online payment options are at their best let us help you out. We guarantee safe networks and an easy customer friendly process that helps your business grow. An easy-paying method also helps you develop the trust of consumers.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "AA Digital Solution will enable you to create an online payment system with easy transactions. You can record your finances and get payments setup online.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "OPTIMIZING YOUR CUSTOMERS:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Thanks to online payment services, customers can shop in any global market at any time of the day. Customers prefer to shop online for maximum convenience. As a retailer, you should respect that preference. Customers who shop around the world today are already accustomed to receiving instant confirmation of their purchases and, in the case of digital goods, receiving and in-person access to the goods. As a result, without the ability to pay online, customers cannot experience the joy of paying online. Most companies lack a sense of understanding of the seriousness of online payment systems therefore they fail majorly in satisfying their consumers. But AA Digital Solutions help its client to establish a strong and effective network by choosing the best service provider.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "We on your behalf work on all the technicalities and research to bring out the best results. We can ensure that businesses irrespective of their size and type can access additional business functions and improve operational efficiency. Online payments are likely to become the norm in the next few years, and recent distances will only accelerate this trend. Keep your business up to date by adding the option to accept payments online and take advantage of the additional benefits that come with this option and let us take the charge to help you with an efficient online payment system.",
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
