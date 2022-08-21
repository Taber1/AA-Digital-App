import 'package:aa_digital/routes/custom_routes.dart';
import 'package:aa_digital/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

void main() {
  runApp(
    Phoenix(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AA Digital',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      onGenerateRoute: CustomRoutes.allRoutes,
      initialRoute: splash,
    );
  }
}
