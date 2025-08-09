import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        leading: Icon(Icons.home),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            text: "My ",
            children: [
              TextSpan(
                text: "Flutter ",
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "App2",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
