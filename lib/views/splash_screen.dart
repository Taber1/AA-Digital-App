import 'dart:async';
import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/routes/route_names.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/dashboard_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const DashboardScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Globals.blackColor,
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Copyright © AA Digital Solution",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(AssetConfig.kSplashBG))),
          child: Center(child: Image.asset(AssetConfig.kLogo)),
        ));
  }
}
