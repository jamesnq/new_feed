import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_feed/widget/hashtag.dart';
import 'package:new_feed/widget/story_avatar.dart';
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
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 15),
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
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ]),
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  //avatar status
                  Container(
                    padding: const EdgeInsets.only(
                        left: 13, right: 13, top: 13, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 10),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage(avatar),
                                radius: 30,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Daisy",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 17)),
                                Text("34 mins ago",
                                    style: TextStyle(color: Color(0xFFD6D6D6))),
                              ],
                            )
                          ],
                        ),
                        const Icon(Icons.more_vert),
                      ],
                    ),
                  ),

                  //text
                  Container(
                      padding: const EdgeInsets.only(
                          right: 13, left: 13, top: 8, bottom: 12),
                      child: const Text(
                        "This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends",
                        style: TextStyle(color: Color(0xFFD6D6D6)),
                      )),

                  //picture
                  LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13, right: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                anh1,
                                fit: BoxFit.cover,
                                height: 260,
                                width: constraints.maxWidth / 2,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 13),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    anh2,
                                    fit: BoxFit.cover,
                                    height: 125,
                                    width: constraints.maxWidth * 0.4,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, right: 13, top: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    anh3,
                                    fit: BoxFit.cover,
                                    height: 125,
                                    width: constraints.maxWidth * 0.4,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      );
                    },
                  ),

                  //tag
                  Container(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        HashTag(
                          text: "#Louis Vuitton",
                        ),
                        HashTag(
                          text: "#Chloe",
                        ),
                      ],
                    ),
                  ),

                  const Divider(
                    color: Color(0xFFE5DDDA),
                    height: 20,
                    thickness: 1,
                    indent: 13,
                    endIndent: 13,
                  ),

                  //share comment like
                  Container(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 8),
                              child: Row(
                                children: [
                                  Container(
                                    child: SvgPicture.asset(
                                      "assets/reply_black_24dp.svg",
                                      color: const Color(0xFFD6D6D6),
                                    ),
                                    padding: const EdgeInsets.only(right: 5),
                                  ),
                                  const Text("1.7k",
                                      style:
                                          TextStyle(color: Color(0xFFD6D6D6)))
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 8),
                              child: Row(
                                children: [
                                  Container(
                                    child: const Icon(Icons.comment,
                                        color: Color(0xFFD6D6D6)),
                                    padding: const EdgeInsets.only(right: 5),
                                  ),
                                  const Text(
                                    "325",
                                    style: TextStyle(color: Color(0xFFD6D6D6)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                  "assets/favorite_black_24dp.svg",
                                  color: Colors.red),
                              padding: const EdgeInsets.only(right: 5),
                            ),
                            const Text(
                              "1.7k",
                              style: TextStyle(color: Color(0xFFD6D6D6)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
