import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  double counterNumber;

  MyWidget({super.key, this.counterNumber = 0});

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, refresh) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              tooltip: 'Open Menu',
            ),
            actions: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle_rounded)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.public_sharp))
            ],
            title: const Text(
              'holagente',
              style: TextStyle(fontSize: 20),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      refresh(() {
                        counterNumber++;
                      });
                    },
                    icon: const Icon(Icons.plus_one)),
                Text('Click $counterNumber'),
              ],
            ),
          ),
        ),
      );
    });
  }
}
