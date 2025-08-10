import 'package:flutter/material.dart';

class StatefulClass extends StatefulWidget {
  const StatefulClass({super.key});

  @override
  State<StatefulClass> createState() => _StatefulClassState();
}

class _StatefulClassState extends State<StatefulClass> {

  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Stateful Widget"),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  liked = !liked;
                });
              },
              icon: liked ? (Icon(Icons.favorite)) : (Icon(
                  Icons.favorite_border)),
            ),
          ),
        ],
      ),
    );
  }
}
