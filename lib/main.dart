import 'package:flutter/material.dart';
import 'ui/screens/splash/splash.dart';
import 'ui/screens/onboarding/onboarding.dart';
import 'ui/screens/hadeth_details/hadeth_details.dart';
import 'ui/screens/main/main.dart';
import 'ui/screens/sura_details/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Splash.routeName: (_) => Splash(),
        Main.routeName: (_) => Main(),
        SuraDetails.routeName: (_) => SuraDetails(),
        HadethDetails.routeName: (_) => HadethDetails(),
        Onboarding.routeName: (_) => Onboarding(),
      },
      initialRoute: Splash.routeName,
    );
  }
}
