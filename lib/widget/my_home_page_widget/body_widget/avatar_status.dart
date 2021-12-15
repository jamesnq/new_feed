import 'package:flutter/material.dart';
import 'package:new_feed/constant.dart';
class AvatarStatus extends StatefulWidget {
  final String? avatar;
  final String? name;
  final String? status;
  const AvatarStatus({
    Key? key,
    required this.avatar,
    required this.name,
    required this.status
  }) : super(key: key);

  @override
  _AvatarStatusState createState() => _AvatarStatusState();
}

class _AvatarStatusState extends State<AvatarStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: 13, right: 13, top: 13, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.avatar!),
                  radius: 30,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name!,
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  Text(widget.status!,
                      style: const TextStyle(color: textColor)),
                ],
              )
            ],
          ),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
