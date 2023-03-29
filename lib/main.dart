import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        backgroundColor: Color(0xffEDF1D6),
        drawer: Drawer(
          backgroundColor: Colors.green[200],
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.lime),
                child: FlutterLogo(
                  size: 10,
                ),
              ),
              ListTile(
                hoverColor: Colors.amber,
                onTap: () {},
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                trailing: const Icon(Icons.arrow_circle_right),
              ),
              ListTile(
                hoverColor: Colors.amber,
                onTap: () {},
                leading: const Icon(Icons.shop),
                title: const Text('shop'),
                trailing: const Icon(Icons.arrow_circle_right),
              ),
              ListTile(
                hoverColor: Colors.amber,
                onTap: () {},
                leading: const Icon(Icons.shopping_cart_outlined),
                title: const Text('order'),
                trailing: const Icon(Icons.arrow_circle_right),
              ),
              ListTile(
                hoverColor: Colors.amber,
                onTap: () {},
                leading: const Icon(Icons.exit_to_app),
                title: const Text('logout'),
                trailing: const Icon(Icons.arrow_circle_right),
              ),
            ],
          ),
        ),

        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("GeeksforGeeks"),
        ), // AppBar
        body: Container(
          color: Color(0xff9DC08B),
          child: const Text(
            "Hello! i am inside a container!",
            style: TextStyle(fontSize: 50),
          ),
        ),

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
