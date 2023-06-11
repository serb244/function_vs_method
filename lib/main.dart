import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCheckOne = false;
  void changeOne() {
    isCheckOne = !isCheckOne;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print('build MyApp');
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            buildInkWell(),
            const SizedBox(height: 25),
            const MyInkWell(),
          ]),
        ),
      ),
    );
  }

  InkWell buildInkWell() {
    return InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('function'),
          Icon(isCheckOne ? Icons.check : Icons.check_box),
        ],
      ),
      onTap: () => changeOne(),
    );
  }
}

class MyInkWell extends StatefulWidget {
  const MyInkWell({super.key});

  @override
  State<MyInkWell> createState() => _MyInkWellState();
}

class _MyInkWellState extends State<MyInkWell> {
  bool isCheckTwo = false;
  void changeTwo() {
    isCheckTwo = !isCheckTwo;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print('build MyInkWell');
    return InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('class'),
          Icon(isCheckTwo ? Icons.check : Icons.check_box),
        ],
      ),
      onTap: () => changeTwo(),
    );
  }
}
