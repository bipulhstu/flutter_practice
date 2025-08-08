import 'package:flutter/material.dart';

class Dashboard2 extends StatelessWidget {
  const Dashboard2({super.key});

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
    );
  }
}
