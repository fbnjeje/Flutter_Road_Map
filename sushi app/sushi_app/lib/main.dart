import 'package:flutter/material.dart';
import 'package:sushi_app/screens/intro_page.dart';
import 'package:sushi_app/screens/menu_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IntroPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage()
      },
    );
  }
}
