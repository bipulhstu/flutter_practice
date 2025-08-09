import 'package:flutter/material.dart';


class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: ListView(
          itemExtent: 100,
          //reverse: true,
          shrinkWrap: true,
          children: [
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.alarm_on_sharp, color: Colors.white,), backgroundColor: Colors.grey,),
              title: Text("Sales"),
              subtitle: Text("Sales of the week"),
              trailing: Text("500"),
              onTap: (){},
              tileColor: Colors.brown.shade50,
            ),

            ListTile(
              leading: Icon(Icons.alarm_on_sharp),
              title: Text("Customers"),
              subtitle: Text("Total customers visited"),
              trailing: Text("550"),
              onTap: (){},
            ),

            ListTile(
              leading: Icon(Icons.alarm_on_sharp),
              title: Text("Profit"),
              subtitle: Text("Profit of the week"),
              trailing: Text("600"),
              onTap: (){},
            ),


          ],
        ),
      ),
    );
  }
}
