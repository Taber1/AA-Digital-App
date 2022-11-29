// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import '../config/asset_config.dart';
import '../utils/globals.dart';
import 'constants.dart';
import 'drawer.dart';
import 'package:http/http.dart' as http;

class ContactScreenNew extends StatefulWidget {
  const ContactScreenNew({super.key});

  @override
  State<ContactScreenNew> createState() => _ContactScreenNewState();
}

class _ContactScreenNewState extends State<ContactScreenNew> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  late DropDownValueModel serviceDropDown;
  bool loading = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
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
                              validator: (value) => value == null || value == ""
                                  ? "Please type a name"
                                  : null,
                              controller: name,
                              style: const TextStyle(color: Globals.whiteColor),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(255, 57, 57, 57),
                                  hintText: "Name",
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              validator: (value) => value == null || value == ""
                                  ? "Please type an email"
                                  : null,
                              controller: email,
                              style: const TextStyle(color: Globals.whiteColor),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(255, 57, 57, 57),
                                  hintText: "Email",
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                            const SizedBox(height: 10),
                            DropDownTextField(
                              initialValue: "Select",
                              clearOption: false,
                              textStyle: const TextStyle(color: Colors.grey),
                              textFieldDecoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(255, 57, 57, 57),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              validator: (value) =>
                                  value == null || value == "Select"
                                      ? "Please select a service"
                                      : null,
                              dropDownItemCount: 4,
                              dropDownList: const [
                                DropDownValueModel(
                                    name: 'Select', value: "Select"),
                                DropDownValueModel(
                                    name: 'Photography', value: "Photography"),
                                DropDownValueModel(
                                    name: 'Menu Design', value: "Menu Design"),
                                DropDownValueModel(
                                    name: 'Media Marketing',
                                    value: "Media Marketing"),
                                DropDownValueModel(
                                    name: 'Digital Strategy',
                                    value: "Digital Strategy"),
                                DropDownValueModel(
                                    name: 'Web Design', value: "Web Design"),
                                DropDownValueModel(
                                    name: 'Digital Presence',
                                    value: "Digital Presence"),
                                DropDownValueModel(
                                    name:
                                        'Online Payment System and Credit Card Processing',
                                    value:
                                        "Online Payment System and Credit Card Processing"),
                                DropDownValueModel(
                                    name: 'Rising Cost', value: "Rising Cost"),
                                DropDownValueModel(
                                    name: 'Labor Cost Issues',
                                    value: "Labor Cost Issues"),
                                DropDownValueModel(
                                    name: 'Food Cost Issues',
                                    value: "Food Cost Issues"),
                              ],
                              onChanged: (val) {
                                setState(() {
                                  serviceDropDown = val;
                                });
                              },
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              maxLines: 6,
                              controller: message,
                              validator: (value) => value == null || value == ""
                                  ? "Please type a message"
                                  : null,
                              style: const TextStyle(color: Globals.whiteColor),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(255, 57, 57, 57),
                                  hintText: "Message",
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                            const SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                if (key.currentState!.validate()) {
                                  setState(() {
                                    loading = true;
                                  });
                                  sendMessage();
                                }
                              },
                              child: Container(
                                height: getDeviceHeight(context) * 0.06,
                                width: getDeviceWidth(context),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xffF16022),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Text(
                                  "Send Message",
                                  style: TextStyle(
                                      color: Globals.whiteColor, fontSize: 17),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            loading
                                ? const CircularProgressIndicator()
                                : const SizedBox()
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
                        Image.asset(AssetConfig.kPhone, height: 30, width: 30),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            Globals().launchIt("Phone", "+818-259-0701");
                          },
                          child: Text(
                            "+818-259-0701",
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    color: Globals.whiteColor, fontSize: 17)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: getDeviceHeight(context) * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 5),
                        Image.asset(AssetConfig.kMail, height: 30, width: 25),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            Globals().launchIt(
                                "Email address", "info@aadigitalsolution.com");
                          },
                          child: Text(
                            "info@aadigitalsolution.com",
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    color: Globals.whiteColor, fontSize: 17)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
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
                )
              ],
            ),
          ),
        ],
      ),
      endDrawer: const DrawerScreen(),
    );
  }

  sendMessage() async {
    //Url
    Uri url =
        Uri.parse('https://aadigitalsolution.com/wp-admin/admin-ajax.php');
    //Body
    Map<String, dynamic> map = {};
    map['post_id'] = '72';
    map['form_id'] = '4f6d0877';
    map['referrer_title'] = 'Contact Us';
    map['queried_id'] = '72';
    map['form_fields[name]'] = name.text;
    map['form_fields[email]'] = email.text;
    map['form_fields[field_63f4a1a]'] = serviceDropDown.name;
    map['form_fields[field_180e520]'] = message.text;
    map['action'] = 'elementor_pro_forms_send_form';
    map['referrer'] = 'https://aadigitalsolution.com/contact-us/';

    var response = await http.post(url, body: map);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      var msg = jsonResponse['data']['message'];
      debugPrint('success ${jsonResponse['success']} message: $message');
      setState(() {
        loading = false;
        name.clear();
        email.clear();
        message.clear();
        serviceDropDown =
            const DropDownValueModel(name: "Select", value: "Select");
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(msg)));
      });
    } else {
      debugPrint('Request failed with status: ${response.statusCode}.');
      setState(() {
        loading = false;
      });
    }
  }
}
