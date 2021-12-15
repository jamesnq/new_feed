import 'package:flutter/material.dart';
import 'package:new_feed/screen/product_screen.dart';

import '../../../constant.dart';

class PictureLayout extends StatefulWidget {
  final String? pic1;
  final String? pic2;
  final String? pic3;

  const PictureLayout({
    Key? key,
    required this.pic1,
    required this.pic2,
    required this.pic3,
  }) : super(key: key);

  @override
  _PictureLayoutState createState() => _PictureLayoutState();
}

class _PictureLayoutState extends State<PictureLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 8),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    var route = MaterialPageRoute(
                        builder: (context) => const ProductScreen(
                            backgroundPic: anh1,
                            productPic: vay_den,
                            productName: "LAMINATED",
                            productBrand: "Louis Vuitton",
                            productDescription:
                                "One button V-nect sling long-sleeved waist female stitching dress",
                            productPrice: "\$6500",
                            productNameTag: "LAMINATED"));
                    Navigator.push(context, route);
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Hero(
                    tag: 'pic1',
                    child: Image.asset(
                      widget.pic1!,
                      fit: BoxFit.cover,
                      height: 260,
                      width: constraints.maxWidth / 2,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 13),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      widget.pic2!,
                      fit: BoxFit.cover,
                      height: 125,
                      width: constraints.maxWidth * 0.4,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 13, top: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      widget.pic3!,
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
    );
  }
}
