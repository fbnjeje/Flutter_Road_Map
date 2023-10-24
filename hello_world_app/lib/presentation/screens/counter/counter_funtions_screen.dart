import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counter Funtions',
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.refresh_rounded),
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                }),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),

              /* 
            * 2 maneras de Hacerlo --- primera
            */

              Text(
                'Click${clickCounter == 0 ? '' : 's'}',
                style: const TextStyle(fontSize: 25),
              ),

              /* 
            * 2 maneras de Hacerlo --- Segunda
          */
              // if (clickCounter == 0)
              //   const Text(
              //     'Click',
              //     style: TextStyle(fontSize: 25),
              //   )
              // else
              //   const Text(
              //     'Clicks',
              //     style: TextStyle(fontSize: 25),
              //   )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {});
                if (clickCounter == 0) return;
                clickCounter--;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {});
                clickCounter++;
              },
            ),
          ],
        ));
        
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      backgroundColor: const Color.fromRGBO(205, 247, 186, 1),
      // mini: true,

      child: Icon(icon),
    );
  }
}


/*

TODO: stless
* para escribir todo lo de arriba mas rapido, escribir 'stless'
es como escribir html y te pone la plantilla sola automaticamente
*/