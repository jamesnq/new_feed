import 'package:flutter/material.dart';

class HashTag extends StatelessWidget {
  final String? text;
  const HashTag({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.only(left: 12.5, right: 12.5, top: 8, bottom: 8),
      decoration: const BoxDecoration(
        color: Color(0xFFE5DDDA),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Text(
        this.text!,
        style: TextStyle(color: Color(0xFFC0ABA4)),
      ),
    );
  }
}
