import 'package:flutter/material.dart';
import 'package:focusable_action_detector_example/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Focusable Action Detector Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            const SizedBox(height: 10),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 50),
            MyCustomButton(
              onPressed: _incrementCounter,
              label: 'Increment',
              color1: Colors.blue.shade100,
              color2: Colors.white,
            ),
            const SizedBox(height: 20),
            MyCustomButton(
              onPressed: _resetCounter,
              label: "Reset",
              color1: Colors.black26,
              color2: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
