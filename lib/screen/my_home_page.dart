import 'package:flutter/material.dart';
import 'package:new_feed/widget/widget.dart';
import '../constant.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text("Discovery"),
        backgroundColor: const Color(0xFFF5F5F5),
        foregroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Story(bigAvatar: avatar, smallAvatar: channel),
                  SizedBox(),
                  Story(bigAvatar: story2, smallAvatar: lv),
                  SizedBox(),
                  Story(bigAvatar: story3, smallAvatar: chloe),
                  SizedBox(),
                  Story(bigAvatar: avatar, smallAvatar: channel),
                ],
              ),


            ),
          ],
        ),
      ),
    );
  }
}
