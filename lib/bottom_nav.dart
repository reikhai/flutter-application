import 'package:flutter/cupertino.dart';
import 'home_page/index.dart';
/// Flutter code sample for [CupertinoTabBar].

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBarExample();
  }
}

class CupertinoTabBarExample extends StatefulWidget {
  const CupertinoTabBarExample({super.key});

  @override
  _CupertinoTabBarExampleState createState() => _CupertinoTabBarExampleState();
}

class _CupertinoTabBarExampleState extends State<CupertinoTabBarExample> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected tab index
    });
  } // Store the selected tab index

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Color.fromARGB(255, 254, 254, 254),
        activeColor: const Color.fromARGB(255, 0, 0, 0),
        inactiveColor: const Color.fromARGB(255, 0, 0, 0),
        height: 60,
        iconSize: 25,
        onTap: _onTabSelected, // Update the tab when a new tab is selected
        currentIndex: _selectedIndex, // Dynamically update the current inde
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(
                _selectedIndex == 0
                    ? CupertinoIcons.house_fill
                    : CupertinoIcons.house,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(_selectedIndex == 1 ? CupertinoIcons.search_circle_fill : CupertinoIcons.search_circle),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(_selectedIndex == 2 ? CupertinoIcons.plus_square_fill : CupertinoIcons.plus_square),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(_selectedIndex == 3 ? CupertinoIcons.play_rectangle_fill : CupertinoIcons.play_rectangle),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(_selectedIndex == 4 ? CupertinoIcons.person_fill : CupertinoIcons.person),
            ),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return HomePage(); // Replace with your desired widget for each tab
          },
        );
      },
    );
  }
}
