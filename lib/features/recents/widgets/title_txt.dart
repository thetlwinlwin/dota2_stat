import 'package:flutter/material.dart';

class TitleTxt extends StatelessWidget {
  final String side;
  final String partSizeTxt;
  const TitleTxt({
    super.key,
    required this.side,
    required this.partSizeTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.people_outline),
              Text(partSizeTxt),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(side),
        )
      ],
    );
  }
}
