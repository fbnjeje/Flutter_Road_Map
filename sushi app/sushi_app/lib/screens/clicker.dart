import 'package:flutter/material.dart';

var counterClick = 0;

class Clicker extends StatefulWidget {
  const Clicker({super.key});
  @override
  State<Clicker> createState() => _Clicker();
}

class _Clicker extends State<Clicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("holil $counterClick"),
          IconButton(
            onPressed: () {
              setState(() {
                counterClick++;
              });
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
