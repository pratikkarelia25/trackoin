import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TracKoin',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TracKoin'),
        ),
        body: SafeArea(
          child: Column(),
        ),
      ),
    );
  }
}
