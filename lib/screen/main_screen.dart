import 'package:flutter/material.dart';
import 'package:new_feed/constant.dart';
import 'package:new_feed/screen/more_screen.dart';
import 'package:new_feed/screen/my_home_page.dart';
import 'package:new_feed/screen/people_screen.dart';
import 'package:new_feed/screen/play_screen.dart';
import 'package:new_feed/widget/bottom_navigation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigation();
  }
}
