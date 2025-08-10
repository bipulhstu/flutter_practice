import 'package:flutter/material.dart';

import '../widgets/listview.dart';

class CustomWidgets extends StatelessWidget {
  const CustomWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widgets'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTileWidget(
            title: "Mouse",
            subTitle: "A4Tech Mouse",
            trailingIcon: Icons.arrow_forward,
          ),
          ListTileWidget(
            title: "Keyboard",
            subTitle: "A4Tech Keyboard",
            leadingIcon: Icons.keyboard,
            iconColor: Colors.blue,
            listTileColor: Colors.orangeAccent,
          ),
          ListTileWidget(
            title: "Headset",
            subTitle: "A4Tech Headset",
            leadingIcon: Icons.headset,
            iconColor: Colors.red,
            listTileColor: Colors.greenAccent
          ),

        ],
      ),
    );
  }
}

