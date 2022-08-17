import 'package:flutter/material.dart';
import 'package:jobtask/view/navBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Roboto',
        textTheme: const TextTheme(
          bodyText1: TextStyle(),
        ).apply(
          bodyColor: Colors.black,
          displayColor: Colors.blue,
        ),
        primaryColor: Colors.black,
      ),
      home:  const BottomNaveBar(),
    );
  }
}
