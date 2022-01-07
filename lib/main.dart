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
        body: SafeArea(
          child: Image(
            image: AssetImage('images/TRACKOIN.png'),
          ),
        ),//body
      ),//scaffold
    );//material app
  }
}
