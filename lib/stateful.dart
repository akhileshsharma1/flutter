import 'package:flutter/material.dart';

class SflScreen extends StatefulWidget {
  const SflScreen({super.key});

  @override
  State<SflScreen> createState() => _SflScreenState();
}

class _SflScreenState extends State<SflScreen> {
  @override
  String name = '';
  final myController = TextEditingController();
  bool _validate = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: Padding(padding: EdgeInsets.all(8.0),)
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                // onChanged: (value) {
                //   setState(() {
                //     name = value;
                //   });
                // },
                controller: myController,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter friend name',
                  labelText: 'Name',
                  errorText: _validate ? "Field cannot be empty" : null,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Best friend is $name',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = myController.text;
                    name.isEmpty ? _validate = true : _validate = false;
                  });
                },
                child: const Text('Get'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
