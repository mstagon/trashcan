import 'package:flutter/material.dart';
import 'package:trashcan/screen/map.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';

void main() {
  runApp(MaterialApp(home:MyApp())
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    Center(child: Text("홈")),
    MapPage(),
    Center(child: Text("컨텐츠")),
    Center(child: Text("설정")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: tabItems[_selectedIndex],
      ),
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Image.asset(
              "src/img/home.png",
              width: 30,
            ),
            title: Text('홈'),
          ),
          FlashyTabBarItem(
            icon: Image.asset(
              "src/img/map.png",
              width: 30,
            ),
            title: Text('지도'),
          ),
          FlashyTabBarItem(
            icon: Image.asset(
              "src/img/menu.png",
              width: 30,
            ),
            title: Text('컨텐츠'),
          ),
          FlashyTabBarItem(
            icon: Image.asset(
              "src/img/setting.png",
              width: 30,
            ),
            title: Text('설정'),
          ),
        ],
      ),
    );
  }
}
