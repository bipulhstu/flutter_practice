import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows & Columns'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        //color: Colors.greenAccent,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Image(image: AssetImage("images/bird.jpg"), width: 150,)),
                Expanded(flex: 2, child: Image(image: AssetImage("images/bird.jpg"), width: 150,)),
                //Expanded(flex: 2, child: Image(image: AssetImage("images/bird.jpg"), width: 150,)),
                Expanded(flex: 4, child: Image(image: AssetImage("images/bird.jpg"), width: 150,)),
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [Icon(Icons.phone, size: 35.0), Text("Phone")],
                ),

                Column(
                  children: [Icon(Icons.alt_route, size: 35.0), Text("Route")],
                ),

                Column(
                  children: [Icon(Icons.share, size: 35.0), Text("Share")],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
