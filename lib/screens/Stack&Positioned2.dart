import 'package:flutter/material.dart';

class StackPositioned2 extends StatelessWidget {
  const StackPositioned2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack and Positioned"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.grey.shade800,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(width: 330, height: 450),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white24,
                offset: Offset(0, 2),
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ],
            image: DecorationImage(
              image: AssetImage("images/bird.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),

          child: Stack(
            children: [
              Text(
                "Editor's Choice",
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),

              Positioned(
                top: 15.0,
                child: Text(
                  "The Bird is sitting on the tree",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),

              Positioned(
                right: 0,
                bottom: 20.0,
                child: Text(
                  "learn to capture the bird",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                ),
              ),

              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Text(
                  "Coding Bootcamp",
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
