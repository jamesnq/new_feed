import 'package:flutter/material.dart';


import 'body_widget/avatar_status.dart';
import 'body_widget/body_text.dart';
import 'body_widget/hashtag_widget/hashtag_container.dart';
import 'body_widget/picture_layout.dart';
import 'body_widget/share_like_comment.dart';

class Body extends StatefulWidget {
  final String? avatar;
  final String? avatarName;
  final String? avatarStatus;
  final String? bodyText;
  final String? pic1;
  final String? pic2;
  final String? pic3;
  final String? hashTag1;
  final String? hashTag2;
  final String? shareCount;
  final String? commentCount;
  final String? likeCount;

  const Body({
    Key? key,
    required this.avatar,
    required this.avatarName,
    required this.avatarStatus,
    required this.bodyText,
    required this.pic1,
    required this.pic2,
    required this.pic3,
    required this.hashTag1,
    required this.hashTag2,
    required this.shareCount,
    required this.commentCount,
    required this.likeCount,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 7),
            ),
          ]),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          //avatar status
          AvatarStatus(
              avatar: widget.avatar,
              name: widget.avatarName,
              status: widget.avatarStatus),

          //text
          BodyText(text: widget.bodyText),

          //picture
          PictureLayout(
              pic1: widget.pic1, pic2: widget.pic2, pic3: widget.pic3),

          //tag
          HashTagContainer(
            hashTag1: widget.hashTag1,
            hashTag2: widget.hashTag2,
          ),

          const Divider(
            color: Color(0xFFE5DDDA),
            height: 20,
            thickness: 1,
            indent: 13,
            endIndent: 13,
          ),

          //share comment like
          ShareLikeComment(
              share: widget.shareCount,
              comment: widget.commentCount,
              like: widget.likeCount),
        ],
      ),
    );
  }
}
