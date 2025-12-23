import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // what's needed??

  // a variable
  int _counter = 0;

  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }
  //a method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("You pushed the text this many times")),
          Center(child: Text(_counter.toString())),
          FloatingActionButton(
            onPressed: () {
              _increaseCounter();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
