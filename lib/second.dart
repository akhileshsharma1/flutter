// import 'package:card_example/textfield.dart';

import 'package:card_example/stateful.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/firstscreen.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: TFieldExample(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SflScreen(),
    );
  }
}
