import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/cupertino.dart';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.person,
                        size: 60,
                      ),
                    ),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ); // MaterialApp
  }
}
