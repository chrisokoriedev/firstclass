import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        title: 'Flutter Title',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({required this.title});

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have clicked the button',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 40, color: Colors.purpleAccent),
            ),
            const Text(
              'Times',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => incrementCounter(),
        child: const Icon(Icons.arrow_upward),
      ),
    );
  }
}
