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
              "KYOTO SUSHI TIENDA",
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
              "EL SABOR DE LA COMIDA JAPONESA",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 40, color: Colors.white),
            ),

            //LITTLE SPACE

            const SizedBox(height: 10),

            //subtitle

            Text(
              "Siente el sabor de la comida japonesa más popular desde cualquier lugar y en cualquier momento",
              style: TextStyle(color: Colors.grey[300], height: 2),
            ),

            //SPACE

            const SizedBox(height: 25),

            //getStarted button

            MyButton(
              text: "Empieza ahora",
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
git