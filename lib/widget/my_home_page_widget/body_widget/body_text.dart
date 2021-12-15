import 'package:flutter/material.dart';
import 'package:new_feed/constant.dart';

class BodyText extends StatelessWidget {
  final String? text;
  const BodyText({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
            right: 13, left: 13, top: 8, bottom: 12),
        child: Text(
          text!,
          style: const TextStyle(color: textColor),
        )
    );
  }
}
