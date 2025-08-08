import 'dart:math';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        leading: Icon(Icons.home),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Text("Random value is: ${getNumber()}")
      ),
    );
  }
}

int getNumber() {
  //Random random = Random();
  //var number = random.nextInt(100);
  //return number;


  //simplify
  return Random().nextInt(100);
}
