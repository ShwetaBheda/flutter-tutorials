import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  // The entry point of the app, which runs the MyApp widget.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // The root widget of the app is a MaterialApp that shows the HomeScreen.
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold widget provides a basic layout structure with AppBar and body content.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material & Cupertino UI Example'), // AppBar with a title.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the content in the middle of the screen.
          children: <Widget>[
            // Material button which triggers the Material Dialog when pressed.
            ElevatedButton(
              onPressed: () {
                // Calls the _showMaterialDialog function to show Material Dialog.
                _showMaterialDialog(context);
              },
              child: const Text('Show Material Dialog'), // Button label.
            ),
            const SizedBox(height: 20), // Space between the two buttons.
            
            // Cupertino button which triggers the Cupertino Dialog when pressed.
            CupertinoButton.filled(
              onPressed: () {
                // Calls the _showCupertinoDialog function to show Cupertino Dialog.
                _showCupertinoDialog(context);
              },
              child: const Text('Show Cupertino Dialog'), // Button label.
            ),
          ],
        ),
      ),
    );
  }

  // Function to show Material Dialog when Material button is pressed.
  void _showMaterialDialog(BuildContext context) {
    // showDialog function displays the AlertDialog.
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Material Button Clicked'), // Dialog title.
        content: const Text('This is a Material Dialog on the same screen.'), // Dialog content.
        actions: [
          // Button inside the dialog to close it.
          TextButton(
            child: const Text('Close'),
            onPressed: () => Navigator.of(context).pop(), // Close the dialog when pressed.
          ),
        ],
      ),
    );
  }

  // Function to show Cupertino Dialog when Cupertino button is pressed.
  void _showCupertinoDialog(BuildContext context) {
    // showCupertinoDialog function displays the CupertinoAlertDialog.
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('Cupertino Button Clicked'), // Dialog title.
        content: const Text('This is a Cupertino Dialog on the same screen.'), // Dialog content.
        actions: [
          // Button inside the dialog to close it.
          CupertinoDialogAction(
            child: const Text('Close'),
            onPressed: () => Navigator.of(context).pop(), // Close the dialog when pressed.
          ),
        ],
      ),
    );
  }
}
