import 'package:aa_digital/utils/globals.dart';
import 'package:flutter/material.dart';

class ImagePreviewScreen extends StatelessWidget {
  final String imageName;
  const ImagePreviewScreen({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globals.greyColorDark,
      body: Stack(
        children: [
          Image.asset(
            imageName,
            // fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
            top: 50,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Globals.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
