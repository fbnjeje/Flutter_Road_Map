import 'package:flutter/material.dart';
import 'package:sushi_app/screens/intro_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
