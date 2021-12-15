import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class ShareLikeComment extends StatefulWidget {
  final String? share;
  final String? comment;
  final String? like;

  const ShareLikeComment(
      {Key? key,
      required this.share,
      required this.comment,
      required this.like})
      : super(key: key);

  @override
  _ShareLikeCommentState createState() => _ShareLikeCommentState();
}

class _ShareLikeCommentState extends State<ShareLikeComment> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 8),
                child: Row(
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        "assets/reply_black_24dp.svg",
                        color: textColor,
                      ),
                      padding: const EdgeInsets.only(right: 5),
                    ),
                    Text(widget.share!, style: const TextStyle(color: textColor))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 8),
                child: Row(
                  children: [
                    Container(
                      child: const Icon(Icons.comment, color: textColor),
                      padding: const EdgeInsets.only(right: 5),
                    ),
                    Text(
                      widget.comment!,
                      style: const TextStyle(color: textColor),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isLiked = !_isLiked;
                      });
                    },
                    child: _isLiked
                        ? const Icon(
                            Icons.favorite_outlined,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                            color: textColor,
                          )),
                padding: const EdgeInsets.only(right: 5),
              ),
              Text(
                widget.like!,
                style: const TextStyle(color: textColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
