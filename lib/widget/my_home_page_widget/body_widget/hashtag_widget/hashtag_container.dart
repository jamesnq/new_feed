import 'package:flutter/material.dart';

import 'hashtag.dart';

class HashTagContainer extends StatelessWidget {
  final String? hashTag1;
  final String? hashTag2;

  const HashTagContainer(
      {Key? key, required this.hashTag1, required this.hashTag2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HashTag(
            text: hashTag1!,
          ),
          HashTag(
            text: hashTag2!,
          ),
        ],
      ),
    );
  }
}
