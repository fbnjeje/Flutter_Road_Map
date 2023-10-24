import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.delete),
      // ),
    );
  }
}


/*

TODO: stless
* para escribir todo lo de arriba mas rapido, escribir 'stless'
es como escribir html y te pone la plantilla sola automaticamente
*/