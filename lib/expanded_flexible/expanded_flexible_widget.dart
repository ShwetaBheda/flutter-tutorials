import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FlexibleExpandedDemo(),
    );
  }
}

class FlexibleExpandedDemo extends StatelessWidget {
  const FlexibleExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible & Expanded Demo"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 100,
            child: const Center(
              child: Text(
                "Fixed Height Container",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Row using Flexible with flex property
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  child: const Center(
                    child: Text(
                      "Flex: 1",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  height: 100,
                  child: const Center(
                    child: Text(
                      "Flex: 2",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.purple,
                  height: 100,
                  child: const Center(
                    child: Text(
                      "Flex: 3",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Row using Flexible without flex property
          Row(
            children: [
              Flexible(
                child: Container(
                  color: Colors.orange,
                  height: 100,
                  child: const Center(
                    child: Text(
                      "No Flex",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.teal,
                  height: 100,
                  child: const Center(
                    child: Text(
                      "No Flex",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.indigo,
                  height: 100,
                  child: const Center(
                    child: Text(
                      "No Flex",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Row using Expanded without flex property
          Row(
            children: [
              Container(
                color: Colors.pink,
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 100,
                  child: const Center(
                    child: Text(
                      "Expanded",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Row using Flexible and Expanded together
          Row(
            children: [
              Flexible(
                child: Container(
                  color: Colors.greenAccent,
                  height: 100,
                  child: const Center(
                    child: Text(
                      "Flexible",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.pinkAccent,
                  height: 100,
                  child: const Center(
                    child: Text(
                      "Flexible",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blueAccent,
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
