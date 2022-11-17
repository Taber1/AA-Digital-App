import 'dart:async';
import 'package:aa_digital/config/asset_config.dart';
import 'package:aa_digital/routes/route_names.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:aa_digital/views/dashboard_screen.dart';
import 'package:aa_digital/views/initial_screen.dart';
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
            MaterialPageRoute(builder: (context) => const InitialScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Globals.backgroundColor,
        body: Container(
          decoration: const BoxDecoration(
              color: Globals.backgroundColor,
              image: DecorationImage(
                  image: AssetImage(AssetConfig.kBG), fit: BoxFit.fill)),
          child: Center(child: Image.asset(AssetConfig.kLogo)),
        ));
  }
}
