import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = 'My App';
    final DateTime now = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(title, style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text('Current time: ${now.toString()}',
            style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
