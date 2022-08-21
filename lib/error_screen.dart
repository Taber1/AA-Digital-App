import 'package:aa_digital/utils/globals.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globals.greyColorDark,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'No Screen Found',
              style: TextStyle(
                  color: Globals.redColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () => Phoenix.rebirth(context),
              child: const Text(
                'Click to Restart the App',
                style: TextStyle(
                    color: Globals.whiteColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
