import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Screen'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          spacing: 20.0,

          children: [

            ElevatedButton.icon(
              icon: Icon(Icons.add_shopping_cart_outlined),
              label: Text("Let's Begin"),
              //child: const Text('Elevated Button'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                //adding: EdgeInsets.all(10.0),
                fixedSize: Size(300.0, 60.0),
                backgroundColor: Colors.yellow,
                textStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                elevation: 15,
                shadowColor: Colors.yellow,
                side: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
                alignment: Alignment.center,
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),)
                shape: StadiumBorder()
              ),
            ),

            OutlinedButton(
              child: const Text('Outlined Button'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                //adding: EdgeInsets.all(10.0),
                fixedSize: Size(300.0, 60.0),
                //backgroundColor: Colors.yellow,
                textStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                //elevation: 15,
                shadowColor: Colors.yellow,
                //side: BorderSide(color: Colors.black, width: 2.0,),
                //alignment: Alignment.center,
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),)
                shape: StadiumBorder()
              ),
            ),

            OutlinedButton(
              child: const Text('Disabled Button'),
              onPressed: null,
              style: ElevatedButton.styleFrom(
                //adding: EdgeInsets.all(10.0),
                  fixedSize: Size(300.0, 60.0),
                  //backgroundColor: Colors.yellow,
                  textStyle: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  //elevation: 15,
                  shadowColor: Colors.yellow,
                  //side: BorderSide(color: Colors.black, width: 2.0,),
                  //alignment: Alignment.center,
                  //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),)
                  shape: StadiumBorder()
              ),
            ),

            TextButton(
              child: const Text('Text Button'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                //adding: EdgeInsets.all(10.0),
                fixedSize: Size(300.0, 60.0),
                textStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                shape: StadiumBorder()
              ),
            ),
          ],
        ),
      ),
    );
  }
}
