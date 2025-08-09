import 'package:flutter/material.dart';
import 'package:hello_world/screens/Screen1.dart';
import 'screens/Screen2.dart';
import 'screens/ImageScreen.dart';

void main()  => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App", // Title of the app
        themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Imagescreen()
    );
  }
}

