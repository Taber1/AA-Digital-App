import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/asset_config.dart';
import '../utils/globals.dart';
import 'constants.dart';
import 'drawer.dart';

class RisingCostService extends StatelessWidget {
  const RisingCostService({super.key});

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
                    colors: [
                      Globals.blackColor,
                      Globals.blackColor,
                      Globals.transparentColor
                    ],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  AssetConfig.kRisingCostHome,
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
                      "Rising Cost",
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
                      "LABOR COST ISSUES:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "RESOLVING LABOR COST ISSUES:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "One of the most common problems in the restaurant industry is the employee/ chef, cook/ waiter and waitress/ receptionist/ recruitment and retention. The hotel needs excellent staff in all respects. Reception, kitchen, maintenance, administration, housekeeping, etc. The restaurant industry is also facing major challenges due to a lack of skills among educated young people who have recently graduated from educational institutions. To resolve this issue, we can help you with consistent training of the new workforce. There are several strategies we employ to maintain a skilled workforce. For example, instilling a sense of responsibility in the minds of team members and fostering a sense of belonging (culture) keeps them committed to their work.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Globals().launchIt(
                            "website", "https://www.dir.ca.gov/dlse/");
                      },
                      child: Text(
                        "https://www.dir.ca.gov/dlse/",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                            textStyle:
                                const TextStyle(color: Globals.yellowColor)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Problems in hiring labor for restaurant often stands on correct advertising and recruitment trends. Moreover, traditional recruitment strategies are no longer very effective. Therefore, one of the most difficult aspects of the restaurant industry is coming up with appropriate strategies for those who have always followed traditional methods. Attracting applicants through messaging apps, social media, and other online sources that help reduce recruitment drive expenses. We plan a digital marketing strategy that works as a powerful solution to these problems in the restaurant industry. With the right strategy, this is inevitable.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Globals().launchIt("website",
                            "https://www.dol.gov/agencies/whd/minimum-wage/state#ca");
                      },
                      child: Text(
                        "https://www.dol.gov/agencies/whd/minimum-wage/state#ca",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                            textStyle:
                                const TextStyle(color: Globals.yellowColor)),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "KEEP YOUR COST DOWN:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "The restaurant industry faces many operational challenges. Manage reservations, take care of guests, manage the entire front office, and keep environment and facilities clean. However, all the restaurant departments often cannot complete all tasks at the same time, leading to confusion and customer dissatisfaction. To resolve the issues digital solutions help you with an Integrated hotel management system that includes operations as well as legal problems and labor laws. The better it is for your restaurant, the sooner you will adopt to legal requirements of labor laws. A office system greatly simplifies communication, so processes are automated and departmental functions are synchronized.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Consumables goods and food costs have experienced significant price increases in recent years. All industries will be affected, but the restaurant industry faces the most problems and challenges. Our team offers vigilant services to resolve these issues. Constantly monitoring inventory, managing inventory, and minimizing waste are visible solutions to this problem. We help you with cost-saving strategies that help keep costs down.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 30),
                    //! Second Types
                    Text(
                      "FOOD COST ISSUE:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "HELP YOU SAVE YOUR MONEY:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Understanding the relationship between cooking revenue and raw material costs is called “food costing”. Tracking and monitoring food, entering a restaurant is the first step in reducing food waste and costs. Many restaurants order in bulk, so it can be difficult to use up all the food before it spoils. Helps save money. However, calculating the cost of grocery restaurants can be time-consuming. Inventory, cost of goods sold (COGS), and grocery cost rate are all factors to consider when calculating the grocery cost rate. AA digital solution assists you in resolving your food cost issues, which can lead to better financial decisions. Our basic idea is to help you with reducing your cost and damages due to bulk buying or food wastage.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Globals().launchIt("website",
                            "https://www.ams.usda.gov/mnreports/ams_2452.pdf");
                      },
                      child: Text(
                        "https://www.ams.usda.gov/mnreports/ams_2452.pdf",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                            textStyle:
                                const TextStyle(color: Globals.yellowColor)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Food cost is the cost per plate. For example, how much cost of each ingredient to prepare a plate. A chicken portion of 8oz matched potatoes, 4oz, mixed vegetables 4oz and then your ingredients such as butter, the food seasoning, your added sauces and then the Labor cost to prepare this dish. 1 hour \$22.00 plus additional costs such as insurance and regulations add to your labor costs. Food cost comprises how much per item in bulk, cases, pound, ounces, just raw meat, milk, poultry, pork, seafood, dairy, produces, oil, dry goods, etc. dived by total sales equal to food cost.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Globals().launchIt("website",
                            "https://www.ams.usda.gov/mnreports/dywdairyproductssales.pdf");
                      },
                      child: Text(
                        "https://www.ams.usda.gov/mnreports/dywdairyproductssales.pdf",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                            textStyle:
                                const TextStyle(color: Globals.yellowColor)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "All business needs to know how much it cost to produce the item to be sold to find the profit per item. Any food place requires to run its food cost under 25-30 % to be in line and profitable. Food cost is higher in today’s market and some businesses are struggling to be profitable due to the cost of ingredients and the increase in minimum wages in the labor.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "We keep this in mind when calculating inventory over time. For example, inventory calculations are done at the beginning or end of each day. Calculating grocery cost percentages and inventories helps keep the numbers consistent.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "IDENTIFYING AND RESOLVING ISSUES:",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Many factors must be considered for a restaurant to be successful. Maintaining a healthy income-to-expense ratio is important. Managing food pricing for restaurants is a large part of the overall cost. Simply put the cost of all raw materials used and efforts to prepare a dish as this is the cost of a meal in your restaurant. The ideal price for a meal is 25-30 % of the menu price. Costs, on the other hand, typically increase due to material theft and disposal. This may be a difficult task for businesses to keep track of all the highs and lows of cost. This might result in a mess when accumulating food costs. But with AA Digital Solution around, now you can sit back and relax.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: Globals.whiteColor)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Our main focus is to offer you professional guidance and expertise with your food cost issues in restaurant. We focus on all aspects of food cost problems that are from pricing, ordering, receiving storing, issuing orders, production, and portioning it to a meal. We perform market analysis before planning and implementing measures related to food pricing. Create a food pricing strategy based on restaurant and store ratings and trends over the past three months. To figure out how many raw material a business needs, we look at the likely flow of customers, orders, and sales. A pre-planned strategy is then formulated that allows businesses to effectively manage and control restaurant food costs.",
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
