import 'package:flutter/material.dart';
import '../utils/globals.dart';
import 'constants.dart';

class HeaderScreen extends StatefulWidget {
  final String currentScren;
  const HeaderScreen({super.key, required this.currentScren});

  @override
  State<HeaderScreen> createState() => _HeaderScreenState();
}

class _HeaderScreenState extends State<HeaderScreen> {
  bool visibleMenu = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 125, 125, 125),
          ),
          alignment: Alignment.centerRight,
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Globals.whiteColor,
          ),
        ),
        !visibleMenu
            ? InkWell(
                onTap: () {
                  setState(() {
                    visibleMenu = true;
                  });
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
            : InkWell(
                onTap: () {
                  setState(() {
                    visibleMenu = false;
                  });
                },
                child: Container(
                  height: getDeviceHeight(context) * 0.2,
                  width: getDeviceWidth(context) * 0.4,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.home,
                              size: 20, color: Globals.whiteColor),
                          widget.currentScren == "Home"
                              ? Container(
                                  width: 20,
                                  height: 5,
                                  margin: const EdgeInsets.only(top: 2),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              : const SizedBox(),
                          const SizedBox(height: 10),
                          const Icon(Icons.call,
                              size: 20, color: Globals.whiteColor),
                          widget.currentScren == "Contact us"
                              ? Container(
                                  width: 20,
                                  height: 5,
                                  margin: const EdgeInsets.only(top: 2),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              : const SizedBox(),
                        ],
                      ),
                      const VerticalDivider(
                          thickness: 2, color: Globals.whiteColor),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 17, color: Globals.whiteColor),
                          ),
                          widget.currentScren == "Home"
                              ? Container(
                                  width: 50,
                                  height: 5,
                                  margin: const EdgeInsets.only(top: 2),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              : const SizedBox(),
                          const SizedBox(height: 10),
                          const Text(
                            "Contact us",
                            style: TextStyle(
                                fontSize: 17, color: Globals.whiteColor),
                          ),
                          widget.currentScren == "Contact us"
                              ? Container(
                                  width: 80,
                                  height: 5,
                                  margin: const EdgeInsets.only(top: 2),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              : const SizedBox(),
                        ],
                      )
                    ],
                  ),
                ),
              )
      ],
    );
  }
}
