import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int counter = 10;

  void increment() {
    setState(() {
      counter += 2;
    });
  }

  void decrement() {
    setState(() {
      counter -= 2;
    });
  }

  void multiply() {
    setState(() {
      counter *= 2;
    });
  }

  void divide() {
    setState(() {
      counter ~/= 2;
    });
  }

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contador App'),
        ),
        body: Center(
          child: Text(
            'Contador: $counter',
            style: const TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: increment,
                child: const Text('+2'),
              ),
              FloatingActionButton(
                onPressed: decrement,
                child: const Text('-2'),
              ),
              FloatingActionButton(
                onPressed: multiply,
                child: const Text('x2'),
              ),
              FloatingActionButton(
                onPressed: divide,
                child: const Text('/2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
