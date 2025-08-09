import 'package:flutter/material.dart';

class Imagescreen extends StatelessWidget {
  const Imagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Screen"),
          backgroundColor: Colors.blueGrey
      ),
      body: Column(
        children: [
          Text("Asset Image"),
          Image(image: AssetImage("images/bird.jpg")), // or Image.asset() and Image.network()
          Text("Network Image"),
          Image(
              image: NetworkImage("https://img.freepik.com/free-photo/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg?semt=ais_hybrid&w=740&q=80"),
            height: 300.0,
            fit: BoxFit.fitWidth,
          )
        ],
      ),
    );
  }
}
