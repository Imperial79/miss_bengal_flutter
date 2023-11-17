import 'package:flutter/material.dart';
import 'package:miss_bengal_flutter/utils/components.dart';
import 'Screens/Auth Screens/welcomeUI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    kSystemColors();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Miss Bengal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
        fontFamily: 'Montserrat',
      ),
      home: WelcomeUI(),
    );
  }
}
