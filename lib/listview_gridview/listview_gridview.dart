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
      home: ListGridToggle(),
    );
  }
}

class ListGridToggle extends StatefulWidget {
  const ListGridToggle({super.key});

  @override
  _ListGridToggleState createState() => _ListGridToggleState();
}

class _ListGridToggleState extends State<ListGridToggle> {
  bool _isListView = true; // Track the current view (ListView or GridView)

  final List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
    "Item 9",
    "Item 10",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text("ListView vs GridView"),
        actions: [
          IconButton(
            icon: const Icon(Icons.swap_horiz),
            onPressed: () {
              setState(() {
                _isListView =
                    !_isListView; // Toggle between ListView and GridView
              });
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _isListView ? _buildListView() : _buildGridView(),
      ),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          elevation: 5,
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(items[index], style: const TextStyle(fontSize: 22)),
            ),
            onTap: () {
              if (kDebugMode) {
                print("Tapped on : ${items[index]}");
              }
            },
          ),
        );
      },
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items per row
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          child: Center(
            child: Text(
              items[index],
              style: const TextStyle(fontSize: 18),
            ),
          ),
        );
      },
    );
  }
}
