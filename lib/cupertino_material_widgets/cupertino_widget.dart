import 'package:flutter/cupertino.dart';

void main() {
  runApp(const CupertinoApp(
    home: CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino App'),
      ),
      child: Center(
        child: Text('Hello, Cupertino!'),
      ),
    ),
  ));
}