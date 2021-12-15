import 'package:flutter/material.dart';
import 'package:new_feed/constant.dart';

class ProductScreenBackground extends StatelessWidget {
  final String? backgroundPic;

  const ProductScreenBackground({Key? key, required this.backgroundPic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return SizedBox(
      width: _size.width,
      height: _size.height,
      child: Hero(
        tag: "pic1",
        child: Image.asset(
          backgroundPic!,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
