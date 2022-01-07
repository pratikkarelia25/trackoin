import 'package:flutter/material.dart';
import 'auth_screen.dart';
import 'auth.dart';
import 'package:trackoin/home.dart';

void main() {
  runApp(const authScreen());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => authScreen(),
        '/home': (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
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
