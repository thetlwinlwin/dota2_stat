import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  final String? name;
  final TextStyle? style;
  const ProfileName({
    Key? key,
    this.name,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        name ?? ' ',
        style: style,
      ),
    );
  }
}
//TODO: need extra space for fitted box.