import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Text("hola gente de yt")
        ],
      ),
    );
  }
}
