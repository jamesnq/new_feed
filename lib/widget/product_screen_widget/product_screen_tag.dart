import 'package:flutter/material.dart';

class ProductScreenTag extends StatelessWidget {
  final String? productNameTag;

  const ProductScreenTag({Key? key, required this.productNameTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(left: 40),
        height: _size.height * 0.07,
        width: _size.width * 0.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black.withOpacity(0.3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              productNameTag!,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
