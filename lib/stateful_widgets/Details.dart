import 'package:flutter/material.dart';


class FormDetails extends StatelessWidget {
  FormDetails({super.key, required this.productName});


  String productName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Details"), backgroundColor: Colors.blueAccent,),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.account_balance_wallet_outlined),
              title: Text(productName),
            )
          ],
        ),
      ),
    );
  }
}
