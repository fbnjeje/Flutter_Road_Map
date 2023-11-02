import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Column(
        children: [
          const SizedBox(height: 25),
          //shop Name
          Text(
            "KYOTO'S SUSHI",
            style:
                GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
          ),
          //SPACE
          const SizedBox(height: 25),

          //icon

          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/assets/sushi (2).png'),
          ),

          //title

          //subtitle

          //getStarted button
        ],
      ),
    );
  }
}
