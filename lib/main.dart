import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "My Flutter App", // Title of the app
      home: Scaffold(
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
                  text: "App",
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
      ),
    ),
  );
}
