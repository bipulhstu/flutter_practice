import 'package:flutter/material.dart';


class Listview2 extends StatelessWidget {
  Listview2({super.key});


  List<String> products = ["Laptop", "Mobile", "Computer", "Tablet", "Smart Watch"];
  List<String> productsDetails = ["Laptop is a portable computer", "Mobile is a portable telephone", "Computer is a programmable machine", "Tablet is a portable computer", "Smart Watch is a portable watch"];
  List<int> price = [1000, 2000, 3000, 4000, 5000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(child: Text(products[index][0]),),
              title: Text(products[index]),
              subtitle: Text(productsDetails[index]),
              trailing: Text(price[index].toString()),
              onTap: (){},
            );
          },
        ),
      ),
    );
  }
}
