import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/asset_config.dart';
import '../utils/globals.dart';
import 'constants.dart';
import 'header.dart';

class ContactScreenNew extends StatefulWidget {
  const ContactScreenNew({super.key});

  @override
  State<ContactScreenNew> createState() => _ContactScreenNewState();
}

class _ContactScreenNewState extends State<ContactScreenNew> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  List<String> services = [
    'Select',
    'Photography',
    'Menu Design',
    'Media Marketing',
    'Digital Strategy',
    'Web Design',
    'Digital Presence',
    'Online Payment System and Credit Card Processing',
    'Rising Cost',
    'Labor Cost Issues',
    'Food Cost Issues'
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: getDeviceHeight(context) * 0.1),
                        Text(
                          "Get in Touch",
                          style: GoogleFonts.playfairDisplay(
                              textStyle: const TextStyle(
                                  color: Globals.whiteColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: getDeviceHeight(context) * 0.05),
                        Form(
                          key: key,
                          child: Container(
                            // height: getDeviceHeight(context) * 0.4,
                            // width: getDeviceWidth(context),
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.transparent.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                Text(
                                  "Contact us",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                ),
                                const SizedBox(height: 30),
                                TextFormField(
                                  validator: (value) => value == null
                                      ? "Please type a name"
                                      : null,
                                  controller: name,
                                  style: const TextStyle(
                                      color: Globals.whiteColor),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          const Color.fromARGB(255, 57, 57, 57),
                                      hintText: "Name",
                                      hintStyle:
                                          const TextStyle(color: Colors.grey),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  validator: (value) => value == null
                                      ? "Please type an email"
                                      : null,
                                  controller: email,
                                  style: const TextStyle(
                                      color: Globals.whiteColor),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          const Color.fromARGB(255, 57, 57, 57),
                                      hintText: "Email",
                                      hintStyle:
                                          const TextStyle(color: Colors.grey),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                ),
                                const SizedBox(height: 10),
                                DropdownButtonFormField(
                                    value: services[0],
                                    style: const TextStyle(
                                        color: Globals.whiteColor),
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: const Color.fromARGB(
                                            255, 57, 57, 57),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 20),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    items: services
                                        .map((e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(e),
                                            ))
                                        .toList(),
                                    onChanged: (val) {}),
                                TextFormField(
                                  maxLines: 6,
                                  controller: message,
                                  validator: (value) => value == null
                                      ? "Please type a message"
                                      : null,
                                  style: const TextStyle(
                                      color: Globals.whiteColor),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          const Color.fromARGB(255, 57, 57, 57),
                                      hintText: "Message",
                                      hintStyle:
                                          const TextStyle(color: Colors.grey),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 20),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                                const SizedBox(height: 20),
                                InkWell(
                                  onTap: () {
                                    if (key.currentState!.validate()) {
                                      print("object");
                                    }
                                  },
                                  child: Container(
                                    height: getDeviceHeight(context) * 0.06,
                                    width: getDeviceWidth(context),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF16022),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Text(
                                      "Send Message",
                                      style: TextStyle(
                                          color: Globals.whiteColor,
                                          fontSize: 17),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: getDeviceHeight(context) * 0.05),
                        Text(
                          "Direct Contact",
                          style: GoogleFonts.playfairDisplay(
                              textStyle: const TextStyle(
                                  color: Globals.whiteColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: getDeviceHeight(context) * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(AssetConfig.kPhone,
                                height: 30, width: 30),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {
                                Globals().launchIt("Phone", "+818-259-0701");
                              },
                              child: Text(
                                "+818-259-0701",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        color: Globals.whiteColor,
                                        fontSize: 17)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: getDeviceHeight(context) * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 5),
                            Image.asset(AssetConfig.kMail,
                                height: 30, width: 25),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {
                                Globals().launchIt("Email address",
                                    "info@aadigitalsolution.com");
                              },
                              child: Text(
                                "info@aadigitalsolution.com",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        color: Globals.whiteColor,
                                        fontSize: 17)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const HeaderScreen(
                      currentScren: "Contact us",
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
