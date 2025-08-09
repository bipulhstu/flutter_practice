import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Appbar'),
        backgroundColor: Colors.purple.withOpacity(0.7),
        leading: IconButton(
          icon: Icon(Icons.menu), // Leading icon button with menu icon
          onPressed: () {}, // Callback when menu icon is pressed
        ),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.menu_book), onPressed: () {}),
        ],
        elevation: 20.0,
        //titleSpacing: 20.0,
        centerTitle: true,
        //shape will not work if we add image in flexible space
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10.0)
          )
        ),
        //flexibleSpace: Image(image: AssetImage("images/bird.jpg"), fit: BoxFit.cover,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('AppBar Practice', style: TextStyle(fontSize: 30))],
        ),
      ),
    );
  }
}
