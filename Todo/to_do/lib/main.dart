import 'package:flutter/material.dart';

void main() {
  runApp(const ScaffoldExampleApp());
}

class ScaffoldExampleApp extends StatelessWidget {
  const ScaffoldExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaffoldExample(),
    );
  }
}

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({super.key});

  @override
  State<ScaffoldExample> createState() => _MyWidget();
}

class _MyWidget extends State<ScaffoldExample> {
  int _counterNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 400,
                  child: Image.asset('Assets/1.png'),
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: const Text(
              'holagente',
              style: TextStyle(fontSize: 20),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$_counterNumber',
                  style: const TextStyle(
                      fontSize: 200, fontWeight: FontWeight.w100),
                ),
                Text('Click${_counterNumber == 0 ? '' : 's'}'),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _counterNumber = 0;
                  });
                },
                icon: const Icon(Icons.replay_outlined),
              ),
              IconButton(
                onPressed: () {
                  return setState(() {
                    if (_counterNumber > 0) _counterNumber--;
                  });
                },
                icon: const Icon(Icons.exposure_minus_1),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _counterNumber++;
                  });
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ));
  }
}
