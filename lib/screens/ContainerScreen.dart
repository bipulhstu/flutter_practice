import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        //color: Colors.blueGrey,
        width: 350.0,
        height: 250.0,
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          //borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.grey, width: 6.0),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage("https://img.freepik.com/free-photo/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg?semt=ais_hybrid&w=740&q=80"),
            //image: AssetImage("images/bird.jpg"),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade900,
              blurRadius: 7,
              spreadRadius: 5,
              offset: Offset(4, 4), //location
            )
          ]
        ),
        // child: Text(
        //   "Container",
        //   style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
        // ),
      ),
    );
  }
}
