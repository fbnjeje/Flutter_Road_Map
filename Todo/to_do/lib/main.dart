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
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.public_sharp,
                  ))
            ],
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
                  style: const TextStyle(fontSize: 200),
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
