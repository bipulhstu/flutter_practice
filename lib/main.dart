import 'package:flutter/material.dart';
import 'package:hello_world/screens/AppBar.dart';
import 'package:hello_world/screens/Button.dart';
import 'package:hello_world/screens/ContainerScreen.dart';
import 'package:hello_world/screens/CustomWidgets.dart';
import 'package:hello_world/screens/FloatingActionButton.dart';
import 'package:hello_world/screens/IconScreen.dart';
import 'package:hello_world/screens/ListView.dart';
import 'package:hello_world/screens/ListViewBuilder.dart';
import 'package:hello_world/screens/RowColumn.dart';
import 'package:hello_world/screens/Screen1.dart';
import 'package:hello_world/screens/Stack&Positioned2.dart';
import 'package:hello_world/stateful_widgets/Stateful.dart';
import 'screens/Screen2.dart';
import 'screens/ImageScreen.dart';
import 'screens/NavigationDrawer.dart';

void main()  => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App", // Title of the app
        themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      //home: CustomWidgets()
      home: StatefulClass()
    );
  }
}


