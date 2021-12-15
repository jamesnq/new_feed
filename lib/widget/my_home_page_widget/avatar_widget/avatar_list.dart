import 'package:flutter/material.dart';
import 'package:new_feed/widget/my_home_page_widget/avatar_widget/story_avatar.dart';

import '../../../constant.dart';




class AvatarList extends StatefulWidget {
  const AvatarList({Key? key}) : super(key: key);

  @override
  _AvatarListState createState() => _AvatarListState();
}

class _AvatarListState extends State<AvatarList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            Story(bigAvatar: avatar, smallAvatar: channel),
            SizedBox(
              width: 15,
            ),
            Story(bigAvatar: story2, smallAvatar: lv),
            SizedBox(
              width: 15,
            ),
            Story(bigAvatar: story3, smallAvatar: chloe),
            SizedBox(
              width: 15,
            ),
            Story(bigAvatar: avatar, smallAvatar: channel),
            SizedBox(
              width: 15,
            ),
            Story(bigAvatar: avatar, smallAvatar: channel),
            SizedBox(
              width: 15,
            ),
            Story(bigAvatar: avatar, smallAvatar: channel),
          ],
        ),
      ),
    );
  }
}
