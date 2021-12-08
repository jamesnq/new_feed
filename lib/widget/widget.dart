import 'package:flutter/material.dart';
import 'package:new_feed/constant.dart';

class Story extends StatefulWidget {
  String? bigAvatar;
  String? smallAvatar;

  Story({
    Key? key,
    required this.bigAvatar,
    required this.smallAvatar,
  }) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.bigAvatar!),
                radius: 30,
              ),
            ),
            Positioned(
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.smallAvatar!),
                radius: 10,
              ),
              right: 0,
              bottom: 0,
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            setState(() {
              isPressed = !isPressed;
            });
          },
          child: isPressed
              ? Text("Followed", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.white))
              : Text("Follow", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300, color: Colors.white)),
          style: ElevatedButton.styleFrom(
            primary: isPressed ? Color(0xFF654321) : Color(0xFF985F3E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            fixedSize: const Size(80, 0),
          ),
        ),
      ],
    );
  }
}
