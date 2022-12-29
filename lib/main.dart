import 'package:aa_digital/routes/custom_routes.dart';
import 'package:aa_digital/routes/route_names.dart';
import 'package:aa_digital/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
      debugShowCheckedModeBanner: false,
      title: 'AA Digital',
      theme: ThemeData(
        primarySwatch: Globals.redColorPrimary,
      ),
      onGenerateRoute: CustomRoutes.allRoutes,
      initialRoute: splash,
    );
  }
}
