import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SPACE

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
              child: Image.asset('lib/assets/sushi (1).png'),
            ),

            //title

            Text(
              "THE TASTE OF JAPANISE FOOD",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),

            //LITTLE SPACE

            const SizedBox(height: 10),

            //subtitle

            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(color: Colors.grey[300], height: 2),
            ),

            //SPACE

            const SizedBox(height: 25),

            //getStarted button

            const MyButton(text: "Get Started")
          ],
        ),
      ),
    );
  }
}
