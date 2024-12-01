import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LifecycleDemo(),
    );
  }
}

class LifecycleDemo extends StatefulWidget {
  const LifecycleDemo({super.key});

  @override
  _LifecycleDemoState createState() {
    _showSnackbarMessage("createState called");
    return _LifecycleDemoState();
  }

  static void _showSnackbarMessage(String message) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = navigatorKey.currentContext!;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    });
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class _LifecycleDemoState extends State<LifecycleDemo> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    LifecycleDemo._showSnackbarMessage("initState called");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    LifecycleDemo._showSnackbarMessage("didChangeDependencies called");
  }

  @override
  void didUpdateWidget(covariant LifecycleDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
    LifecycleDemo._showSnackbarMessage("didUpdateWidget called");
  }

  @override
  Widget build(BuildContext context) {
    LifecycleDemo._showSnackbarMessage("build called");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget Lifecycle Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pressed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              child: const Text("Increment Counter"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    LifecycleDemo._showSnackbarMessage("deactivate called");
  }

  @override
  void dispose() {
    super.dispose();
    LifecycleDemo._showSnackbarMessage("dispose called");
  }
}
