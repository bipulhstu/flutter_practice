import 'package:flutter/material.dart';
import 'package:hello_world/stateful_widgets/Details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  var _productName;
  final _productController = TextEditingController();


  @override
  void initState() {
    super.initState();

    _productController.addListener(_updateText);
  }


  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }

  void _updateText() {
    setState(() {
      _productName = _productController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form"), backgroundColor: Colors.blueAccent),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            TextFormField(
              /*onChanged: (value){
                _updateText(value);
              },*/
              controller: _productController,
              decoration: InputDecoration(
                labelText: "Product Name",
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            
            Text("Product Name is: ${_productController.text}"),

            SizedBox(height: 20.0,),
            
            submitFormButton(context)
          ],
        )
      ),
    );
  }

  OutlinedButton submitFormButton(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormDetails(productName: _productController.text,);
              },
            ),
          );
        },
        style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
        child: Text(
          "Submit Form".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      );
  }
}
