import 'package:flutter/material.dart';

import 'package:new_feed/widget/my_home_page_widget/body.dart';
import 'package:new_feed/widget/my_home_page_widget/avatar_widget/avatar_list.dart';
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
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("Discovery"),
        backgroundColor: backgroundColor,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            AvatarList(),
            Body(avatar: avatar, avatarName: "Daisy", avatarStatus: "34 mins ago", bodyText: "This official website feature a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends",
                pic1: anh1,
                pic2: anh2,
                pic3: anh3,
                hashTag1: "#Louis Vuitton",
                hashTag2: "#Chloe",
                shareCount: "1.7k",
                commentCount: "325",
                likeCount: "2.3k"),
            // Body(avatar: anh1, avatarName: "Huy", avatarStatus: "34 mins ago", bodyText: "This official website feature a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends",
            //     pic1: anh1,
            //     pic2: anh2,
            //     pic3: anh3,
            //     hashTag1: "#Louis Vuitton",
            //     hashTag2: "#Chloe",
            //     shareCount: "1.7k",
            //     commentCount: "325",
            //     likeCount: "2.3k"),
          ],
        ),
      ),
    );
  }
}
