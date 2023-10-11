import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  final counterNumber = 0;
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Text('Click $counterNumber'),
        ),
      ),
    );
  }
}
