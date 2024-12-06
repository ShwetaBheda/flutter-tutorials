import 'package:flutter/material.dart';

void main() {
  runApp(const InkWellDemo());
}

class InkWellDemo extends StatelessWidget {
  const InkWellDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter InkWell Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const InkWellExampleScreen(),
    );
  }
}

class InkWellExampleScreen extends StatelessWidget {
  const InkWellExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InkWell Widget Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Example 1: Basic Button with Ripple Effect
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Basic Button Tapped!")),
                );
              },
              splashColor: Colors.red,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Click Me',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Example 2: Circular Button
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Circle Tapped!")),
                );
              },
              splashColor: Colors.green,
              customBorder: const CircleBorder(),
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
                child:
                    const Icon(Icons.play_arrow, size: 50, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            // Example 3: Advanced Gestures
            InkWell(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Single Tap Detected!"))),
              onDoubleTap: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Double Tap Detected!"))),
              onLongPress: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Long Press Detected!"))),
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.purple,
                child: const Center(
                  child: Text(
                    'Tap, Double Tap, or Long Press',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Example 4: Ripple Effect with Ink
            Ink(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Ink Button Tapped!")),
                  );
                },
                borderRadius: BorderRadius.circular(12),
                splashColor: Colors.yellow,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Button with Ink',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
