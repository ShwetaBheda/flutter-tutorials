import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDemoScreen(),
    );
  }
}

class GestureDemoScreen extends StatefulWidget {
  const GestureDemoScreen({super.key});

  @override
  State<GestureDemoScreen> createState() => _GestureDemoScreenState();
}

class _GestureDemoScreenState extends State<GestureDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Gestures Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (kDebugMode) {
              print('Tapped!');
            }
          },
          onDoubleTap: () {
            if (kDebugMode) {
              print('Double Tapped!');
            }
          },
          onLongPress: () {
            if (kDebugMode) {
              print('Long Pressed!');
            }
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Gesture Box',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
