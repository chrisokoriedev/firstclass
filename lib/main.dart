import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffEDF1D6),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("GeeksforGeeks"),
        ), // AppBar
        body: Container(
          width: double.infinity,
          height: 300,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          padding: const EdgeInsets.all(30),
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.1),
          decoration: BoxDecoration(
            color: const Color(0xff9DC08B),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            border: Border.all(
                color: const Color(0xff40513B),
                width: 3,
                style: BorderStyle.solid),
            boxShadow: [
              const BoxShadow(
                color: Color(0xff996073),
                offset: Offset(7, 7),
                blurRadius: 20,
                spreadRadius: 10,
              ),
            ],
          ),
          child: const Text(
            "Hello! i am inside a container!",
            style: TextStyle(fontSize: 20),
          ),
        ),
// Radius.circular(20)
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.lightGreen,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
          ],
        ), // Container
      ), // Scaffold
    ); // MaterialApp
  }
}
