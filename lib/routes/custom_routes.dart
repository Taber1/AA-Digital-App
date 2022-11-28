import 'package:aa_digital/routes/route_names.dart';
import 'package:aa_digital/views/about_screen.dart';
import 'package:aa_digital/views/business_service.dart';
import 'package:aa_digital/views/contact_screen.dart';
import 'package:aa_digital/views/contact_screen_new.dart';
import 'package:aa_digital/views/dashboard_screen.dart';
import 'package:aa_digital/error_screen.dart';
import 'package:aa_digital/views/digipresence_service.dart';
import 'package:aa_digital/views/digistrategy_service.dart';
import 'package:aa_digital/views/food_screen.dart';
import 'package:aa_digital/views/food_service.dart';
import 'package:aa_digital/views/home_screen.dart';
import 'package:aa_digital/views/mediamarketing_service.dart';
import 'package:aa_digital/views/menu_screen.dart';
import 'package:aa_digital/views/menu_service.dart';
import 'package:aa_digital/views/onlinepayment_service.dart';
import 'package:aa_digital/views/risingcost_service.dart';
import 'package:aa_digital/views/splash_screen.dart';
import 'package:aa_digital/views/website_service.dart';
import 'package:aa_digital/views/websocial_screen.dart';
import 'package:flutter/material.dart';

class CustomRoutes {
  static Route<dynamic> allRoutes(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case aboutUs:
        return MaterialPageRoute(builder: (_) => const AboutUsScreen());
      case businessConsulting:
        return MaterialPageRoute(builder: (_) => const BusinessService());
      case foodPhotography:
        return MaterialPageRoute(builder: (_) => const FoodService());
      case webNsocail:
        return MaterialPageRoute(builder: (_) => const WebsiteService());
      case menuDesign:
        return MaterialPageRoute(builder: (_) => const MenuService());
      case contactUs:
        return MaterialPageRoute(builder: (_) => const ContactScreenNew());
      case digiPresence:
        return MaterialPageRoute(builder: (_) => const DigiPresenceService());
      case digiStrategy:
        return MaterialPageRoute(builder: (_) => const DigiStrategyService());
      case mediaMarketing:
        return MaterialPageRoute(builder: (_) => const MediaMarketingService());
      case risingCost:
        return MaterialPageRoute(builder: (_) => const RisingCostService());
      case onlinePayment:
        return MaterialPageRoute(builder: (_) => const OnlinePaymentService());
    }
    return MaterialPageRoute(builder: (_) => const ErrorScreen());
  }
}
