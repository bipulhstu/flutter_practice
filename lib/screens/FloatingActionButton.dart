import 'package:flutter/material.dart';

class Floatingactionbutton extends StatelessWidget {
  Floatingactionbutton({super.key});


  List<String> products = ["Laptop", "Mobile", "Computer", "Tablet", "Smart Watch"];
  List<String> productsDetails = ["Laptop is a portable computer", "Mobile is a portable telephone", "Computer is a programmable machine", "Tablet is a portable computer", "Smart Watch is a portable watch"];
  List<int> price = [1000, 2000, 3000, 4000, 5000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        //elevation: 10.0,
        shape: CircleBorder(),
        //shape: BeveledRectangleBorder(
          //borderRadius: BorderRadius.circular(20.0),
          //side: BorderSide(color: Colors.blue, width: 2.0, style: BorderStyle.solid,)
        //),
        mini: true,
      ),

      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.black87
      ),

      appBar: AppBar(title: Text("Floating Action Button"), backgroundColor: Colors.blueAccent,),
      drawer: Drawer(
        elevation: 0.0,
        child: ListView(
          children: [
            /*DrawerHeader(
              padding: EdgeInsets.all(0.0),
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Text("Drawer Header"),
                    ],
                  ),
            )),*/
            
            UserAccountsDrawerHeader(
                accountName: Text("Md. Bipul Islam"),
                accountEmail: Text("bipulhstu@gmail.com"),
              currentAccountPicture: CircleAvatar(foregroundImage: AssetImage("images/bird.jpg"),),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage("images/bird.jpg"),),
                CircleAvatar(foregroundImage: AssetImage("images/bird.jpg"),),
              ],
            ),

            ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: (){},),
            ListTile(leading: Icon(Icons.shopping_cart), title: Text("Shop"), onTap: (){},),
            ListTile(leading: Icon(Icons.favorite), title: Text("Favorites"), onTap: (){},),


            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("Labels"),
            ),

            ListTile(leading: Icon(Icons.label), title: Text("Red"), onTap: (){},),
            ListTile(leading: Icon(Icons.label), title: Text("Green"), onTap: (){},),
            ListTile(leading: Icon(Icons.label), title: Text("Blue"), onTap: (){},),
          ],
        ),
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
