import 'package:flutter/material.dart';
import 'package:new_feed/constant.dart';

class Story extends StatefulWidget {
  final String? bigAvatar;
  final String? smallAvatar;

  const Story({
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
                radius: 35,
              ),
            ),
            widget.smallAvatar == chloe
                ? Positioned(
                    child: Image.asset(widget.smallAvatar!, width: 25, height: 15,),
                    right: 0,
                    bottom: 0,
                  )
                : Positioned(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(widget.smallAvatar!),
                      radius: 10,
                    ),
                    right: 0,
                    bottom: 0,
                  )
          ],
        ),
        TextButton(
          onPressed: () {
            setState(() {
              isPressed = !isPressed;
            });
          },
          child: isPressed
              ? const Text("Followed",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.white))
              : const Text("Follow",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Colors.white)),
          style: ElevatedButton.styleFrom(
            primary: isPressed ? const Color(0xFF654321) : const Color(0xFF985F3E),
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
