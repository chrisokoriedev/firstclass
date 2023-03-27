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
                leading: Icon(Icons.home),
                title: Text('Home'),
                trailing: Icon(Icons.arrow_circle_right),
              ),
              ListTile(
                hoverColor: Colors.amber,
                onTap: () {},
                leading: Icon(Icons.shop),
                title: Text('shop'),
                trailing: Icon(Icons.arrow_circle_right),
              ),
              ListTile(
                hoverColor: Colors.amber,
                onTap: () {},
                leading: Icon(Icons.shopping_cart_outlined),
                title: Text('order'),
                trailing: Icon(Icons.arrow_circle_right),
              ),
              ListTile(
                hoverColor: Colors.amber,
                onTap: () {},
                leading: Icon(Icons.exit_to_app),
                title: Text('logout'),
                trailing: Icon(Icons.arrow_circle_right),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("GeeksforGeeks"),
        ), // AppBar
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Hello Geeks!!",
                style: TextStyle(fontSize: 49),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.lightGreen,
          items: [
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
