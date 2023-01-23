import 'package:flutter/material.dart';

class StatContentContainer extends StatelessWidget {
  final String category;
  final String total;
  final String win;
  final bool isTitle;
  const StatContentContainer({
    Key? key,
    bool? isHeader,
    required this.category,
    required this.total,
    required this.win,
  })  : isTitle = isHeader ?? false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? style = isTitle
        ? TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 14)
        : null;
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1)),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Text(
                category,
                style: style,
              )),
          Expanded(
              child: Text(
            total,
            style: style,
          )),
          Expanded(
              child: Text(
            win,
            style: style,
          )),
        ],
      ),
    );
  }
}
