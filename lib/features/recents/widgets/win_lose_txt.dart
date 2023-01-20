import 'package:flutter/material.dart';

class WinLoseTxt extends StatelessWidget {
  final bool winOrLose;
  const WinLoseTxt({
    super.key,
    required this.winOrLose,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          winOrLose ? 'Win' : 'Lose',
          style: TextStyle(
            color: winOrLose ? Colors.green : Colors.red,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
