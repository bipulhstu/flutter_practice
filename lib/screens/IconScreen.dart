import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Screen"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Text("Material Icon"),
          Icon(Icons.home, size: 50, color: Colors.blueAccent),
          Text("Font Awesome Icon"), //dependency required
          IconButton(
            icon: Icon(FontAwesomeIcons.share, size: 50, color: Colors.blueAccent),
            onPressed: () {},
            splashColor: Colors.blueAccent,
            highlightColor: Colors.orange,
          ),
          Text("Icon Button"),
          IconButton(
            icon: Icon(Icons.share, size: 50, color: Colors.blueAccent),
            onPressed: () {},
            splashColor: Colors.blueAccent,
            highlightColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
