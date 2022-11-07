import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class NameTag extends StatelessWidget {
  final String name;
  final String attribute;
  final String iconUrl;
  const NameTag({
    Key? key,
    required this.name,
    required this.attribute,
    required this.iconUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: _getColor(),
          width: 2,
        ),
      ),
      label: Text(name),
      labelStyle: TextStyle(
        overflow: TextOverflow.fade,
        color: _getColor(),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      labelPadding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
      avatar: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: CachedNetworkImage(imageUrl: '$kImgBaseUrl$iconUrl'),
      ),
    );
  }

  Color _getColor() {
    if (attribute == 'str') {
      return Colors.red;
    } else if (attribute == 'agi') {
      return Colors.lightGreen;
    } else {
      return Colors.lightBlue;
    }
  }
}
