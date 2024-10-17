import 'package:flutter/material.dart';
import 'package:portfolio_app/firebase_options.dart';
import 'package:portfolio_app/mobile/landing_page_mobile.dart';
import 'package:portfolio_app/routes.dart';
import 'package:portfolio_app/web/landing_page_web.dart';
import 'package:url_strategy/url_strategy.dart';
import "package:firebase_core/firebase_core.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
