import 'package:dice/DiceScreen.dart';
import 'package:dice/IntroScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "dicescreenroute": (context) => DiceScreen(),
      },
      home: IntroScreen(),
    );
  }
}
