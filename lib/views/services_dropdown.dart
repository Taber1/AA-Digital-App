import 'package:aa_digital/routes/route_names.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:flutter/material.dart';

class ServicesDropdown extends StatefulWidget {
  const ServicesDropdown({Key? key}) : super(key: key);

  @override
  State<ServicesDropdown> createState() => _ServicesDropdownState();
}

class _ServicesDropdownState extends State<ServicesDropdown> {
  bool showMore = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: InkWell(
            onTap: () {
              setState(() {
                showMore = !showMore;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("SERVICES",
                    style: TextStyle(
                      color: !showMore ? Globals.whiteColor : Colors.red,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  child: Icon(
                    !showMore ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                    color: showMore ? Colors.red : Globals.whiteColor,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ),
        Visibility(
          visible: showMore,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, businessConsulting);
                  },
                  child: const Text("Business Consulting",
                      style: TextStyle(
                          color: Globals.whiteColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, foodPhotography);
                  },
                  child: const Text("Food Photography",
                      style: TextStyle(
                          color: Globals.whiteColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, webNsocail);
                  },
                  child: const Text("Web & Social Media Design",
                      style: TextStyle(
                          color: Globals.whiteColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, menuDesign);
                  },
                  child: const Text("Menu Design",
                      style: TextStyle(
                          color: Globals.whiteColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
