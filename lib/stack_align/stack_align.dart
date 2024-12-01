import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PositionedExample(),
    );
  }
}

class PositionedExample extends StatelessWidget {
  const PositionedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Positioned Widget')),
      body: Center(
        child: Stack(
          children: [
            // Background container that fills the stack area
            Container(
              width: 300,
              height: 300,
              color: Colors.blue[200],
            ),
            // Positioned widget at the top left
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.redAccent,
                child: const Center(child: Text('Top Left')),
              ),
            ),
            // Positioned widget at the top right
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.yellow,
                child: const Center(child: Text('Top Right')),
              ),
            ),
            // Positioned widget at the bottom left
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.greenAccent,
                child: const Center(
                    child: Text(
                  'Bottom Left',
                  textAlign: TextAlign.center,
                )),
              ),
            ),
            // Positioned widget at the bottom right
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.orangeAccent,
                child: const Center(
                    child: Text(
                  'Bottom Right',
                  textAlign: TextAlign.center,
                )),
              ),
            ),
            // Positioned widget in the center

            Positioned(
              top: 110,
              left: 110,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.purpleAccent,
                child: const Center(
                    child: Text(
                  'Center',
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
