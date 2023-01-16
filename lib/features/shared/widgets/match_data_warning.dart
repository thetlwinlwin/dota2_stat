import 'package:flutter/material.dart';

class MatchDataWarning extends StatelessWidget {
  const MatchDataWarning({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amberAccent.shade100,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.warning_amber_rounded,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                'Enabling "Expose public match data" in the settings will give accurate result.',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  overflow: TextOverflow.clip,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
