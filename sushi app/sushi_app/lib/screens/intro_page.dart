import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/theme/Colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('lib/assets/sushi (1).png'),
            ),

            //title

            Text(
              "THE TASTE OF JAPANESE FOOD",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 40, color: Colors.white),
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

            MyButton(
              text: "Get Started",
              onTap: () {
                //go to next page
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
