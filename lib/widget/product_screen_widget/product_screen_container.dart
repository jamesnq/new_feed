import 'package:flutter/material.dart';

import '../../constant.dart';

class ProductScreenContainer extends StatelessWidget {
  final String? productPic;
  final String? productName;
  final String? productBrand;
  final String? productDescription;
  final String? productPrice;

  const ProductScreenContainer(
      {Key? key,
      required this.productPic,
      required this.productName,
      required this.productBrand,
      required this.productDescription,
      required this.productPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      left: 5,
      right: 5,
      child: Container(
        margin: const EdgeInsets.only(bottom: 17),
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: _size.width * 0.93,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          top: 13, right: 13, left: 13, bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          // color: Colors.blue,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey,
                          )),
                      child: Image.asset(
                        productPic!,
                        width: 115,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            productName!,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                          ),
                          child: Text(
                            productBrand!,
                            style:
                                const TextStyle(fontSize: 15, color: textColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: SizedBox(
                            width: 210,
                            child: Text(
                              productDescription!,
                              style: const TextStyle(
                                  fontSize: 12.5, color: textColor),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Divider(
                  color: textColor,
                  // height: 50,
                  thickness: 1,
                  indent: 13,
                  endIndent: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Text(
                        productPrice!,
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8, bottom: 4),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(14),
                          primary: const Color(0xFF985F3E),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
