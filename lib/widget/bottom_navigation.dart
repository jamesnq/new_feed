import 'package:flutter/material.dart';
import 'package:new_feed/screen/more_screen.dart';
import 'package:new_feed/screen/my_home_page.dart';
import 'package:new_feed/screen/people_screen.dart';
import 'package:new_feed/screen/play_screen.dart';

import '../constant.dart';

class BottomNavigation extends StatefulWidget {
  int? currentIndex;
  BottomNavigation({Key? key,
  this.currentIndex = 0,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final tab = const [
    MoreScreen(),
    PlayScreen(),
    MyHomePage(),
    PeopleScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tab[widget.currentIndex!],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.currentIndex!,
        iconSize: 20,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            widget.currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.more), label: "More", backgroundColor: backgroundColor),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Play", backgroundColor: backgroundColor),
          BottomNavigationBarItem(icon: Icon(Icons.navigation), label: "Navigation", backgroundColor: backgroundColor),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt_rounded), label: "People", backgroundColor: backgroundColor),
        ],
      ),
    );
  }
}
