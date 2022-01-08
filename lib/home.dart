import 'package:flutter/material.dart';
import 'stocks_display.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Color(0x00000000),
              title: const Text(
                'TRACKOIN',
                style: TextStyle(
                    fontFamily: 'Quicksand', letterSpacing: 5, fontSize: 25),
              ),
              bottom: const TabBar(
                indicatorColor: Colors.deepPurple,
                tabs: [
                  Tab(
                    icon: Icon(Icons.bar_chart),
                    text: 'Stocks',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.monetization_on_outlined,
                    ),
                    text: 'Crypto',
                  ),
                ],
              ),
              //backgroundColor: Colors.purple,
            ),
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/main_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const TabBarView(
                children: [
                  Stocks(),
                  Text('Crypto'),
                ],
              ),
            ),
            bottomNavigationBar: const bottomNavBar(),
          ),
        ),
      ),
    );
  }
}

class bottomNavBar extends StatelessWidget {
  const bottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF39234a),
      selectedItemColor: Color(0xFFd3d0d6),
      unselectedItemColor: Color(0xFF9c82b0),
      selectedFontSize: 16,
      unselectedFontSize: 14,
      onTap: (value) {},
      items: [
        BottomNavigationBarItem(
          label: 'Markets',
          icon: Icon(Icons.bar_chart),
        ),
        BottomNavigationBarItem(
          label: 'Favorites',
          icon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          label: 'Portfolio',
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}
