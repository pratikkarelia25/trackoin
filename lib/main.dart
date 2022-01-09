import 'package:flutter/material.dart';
import 'auth_screen.dart';
import 'auth.dart';
import 'package:trackoin/home.dart';

void main() {
  runApp(
    authScreen(),
  );
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const authScreen(),
        '/home': (context) => const Home(),
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
