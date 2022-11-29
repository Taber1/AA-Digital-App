// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/constants.dart';
import 'package:flutter/material.dart';
import 'contact_screen_new.dart';
import 'dashboard_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: SizedBox(
            height: getDeviceHeight(context) * 0.3,
            width: getDeviceWidth(context) * 0.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Drawer(
                backgroundColor:
                    const Color.fromARGB(0, 158, 158, 158).withOpacity(0.2),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DashboardScreen()));
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.home,
                                size: 30, color: Globals.whiteColor),
                            SizedBox(width: 10),
                            Text(
                              "Home",
                              style: TextStyle(
                                  fontSize: 20, color: Globals.whiteColor),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ContactScreenNew()));
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.call,
                                size: 30, color: Globals.whiteColor),
                            SizedBox(width: 10),
                            Text(
                              "Contact us",
                              style: TextStyle(
                                  fontSize: 20, color: Globals.whiteColor),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Globals().launchIt("website",
                                  "https://www.facebook.com/profile.php?id=100081826726161&ref=pages_you_manage");
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Globals().launchIt("website",
                                  "https://www.instagram.com/aa.digital_solutions/");
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.orange,
                              child: Icon(
                                FontAwesomeIcons.instagram,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Globals().launchIt("website",
                                  "https://www.linkedin.com/company/aa-digital-solutions/");
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.lightBlue,
                              child: Icon(
                                FontAwesomeIcons.linkedinIn,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Globals().launchIt("website",
                                  "https://www.youtube.com/channel/UCpOtPH8pAlG2g8IJeas3XPA");
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(
                                FontAwesomeIcons.youtube,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
