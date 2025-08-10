import 'package:flutter/material.dart';
import 'package:hello_world/models/product_model.dart';


class FormDetails extends StatelessWidget {
  FormDetails({super.key, required this.productDetails});


  ProductDetails productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Details"), backgroundColor: Colors.blueAccent,),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  width: 1.0,
                  color: Colors.blue,
                ),
              ),
              leading: Icon(Icons.account_balance_wallet_outlined),
              title: Text(productDetails.productName),
              subtitle: Text(productDetails.productType),
              trailing: Text(productDetails.productSize),
              onTap: (){},
            )
          ],
        ),
      ),
    );
  }
}
