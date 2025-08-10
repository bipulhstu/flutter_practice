import 'package:flutter/material.dart';
import 'package:hello_world/stateful_widgets/Details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form"), backgroundColor: Colors.blueAccent),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return FormDetails();
                },
              ),
            );
          },
          style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
          child: Text(
            "Submit Form".toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
