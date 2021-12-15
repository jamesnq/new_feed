import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_feed/widget/product_screen_widget/product_screen_background.dart';
import 'package:new_feed/widget/product_screen_widget/product_screen_container.dart';
import 'package:new_feed/widget/product_screen_widget/product_screen_tag.dart';

import '../constant.dart';

class ProductScreen extends StatefulWidget {
  final String? backgroundPic;
  final String? productPic;
  final String? productName;
  final String? productBrand;
  final String? productDescription;
  final String? productPrice;
  final String? productNameTag;

  const ProductScreen({
    Key? key,
    required this.backgroundPic,
    required this.productPic,
    required this.productName,
    required this.productBrand,
    required this.productDescription,
    required this.productPrice,
    required this.productNameTag,
  }) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ProductScreenBackground(backgroundPic: widget.backgroundPic),
          ProductScreenContainer(
              productPic: widget.productPic,
              productName: widget.productName,
              productBrand: widget.productBrand,
              productDescription: widget.productDescription,
              productPrice: widget.productPrice),
          ProductScreenTag(productNameTag: widget.productNameTag)
        ],
      ),
    );
  }
}
