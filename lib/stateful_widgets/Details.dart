import 'package:flutter/material.dart';


class FormDetails extends StatelessWidget {
  const FormDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Details"), backgroundColor: Colors.blueAccent,),
      body: Center(child: Text("Form Details"),),
    );
  }
}
