import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Column Demo',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // Main axis is vertical in Column
          mainAxisAlignment: MainAxisAlignment
              .spaceAround, // Spaces evenly in vertical direction
          crossAxisAlignment: CrossAxisAlignment
              .start, // Aligns children to start (left) horizontally
          children: [
            // First Row with icons aligned in center
            const Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Aligns icons in center horizontally
              children: [
                Icon(Icons.star, color: Colors.amber, size: 40),
                SizedBox(width: 10), // Adds space between icons
                Icon(Icons.star, color: Colors.blue, size: 40),
                SizedBox(width: 10),
                Icon(Icons.star, color: Colors.red, size: 40),
              ],
            ),

            // Second Row with texts spaced between and stretched to fill the height
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Spaces items evenly
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Centers items vertically
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.orangeAccent,
                  child: const Text('Text 1'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.greenAccent,
                  child: const Text('Text 2'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.purpleAccent,
                  child: const Text('Text 3'),
                ),
              ],
            ),

            // Nested Column inside a Row for layout flexibility
            const Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Spaces items evenly in horizontal direction
              children: [
                Column(
                  mainAxisSize: MainAxisSize
                      .min, // Column takes only as much space as needed
                  children: [
                    Icon(Icons.home, color: Colors.blue),
                    SizedBox(height: 5), // Adds space between icon and text
                    Text('Home'),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.favorite, color: Colors.red),
                    SizedBox(height: 5),
                    Text('Favorite'),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.settings, color: Colors.grey),
                    SizedBox(height: 5),
                    Text('Settings'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
