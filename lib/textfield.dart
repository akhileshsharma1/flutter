import 'package:flutter/material.dart';

class TFieldExample extends StatelessWidget {
  const TFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          obscureText: true,
          obscuringCharacter: "*",
          // keyboardType: TextInputType.phone,
          style: TextStyle(fontSize: 25, color: Colors.blue),
          decoration: InputDecoration(
            icon: Icon(Icons.mail),
            border: OutlineInputBorder(),
            hintText: 'Enter your name',
            labelText: 'Name:',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ),
      )),
    );
  }
}
