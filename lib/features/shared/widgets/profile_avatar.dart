import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
    this.size,
    String? imgUrl,
  })  : _imgUrl = imgUrl ?? '',
        super(key: key);
  final double? size;
  final String _imgUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: size,
      backgroundImage:
          _imgUrl.isEmpty ? null : CachedNetworkImageProvider(_imgUrl),
      child: _imgUrl.isEmpty
          ? const Center(child: Icon(Icons.error_outline))
          : null,
    );
  }
}
