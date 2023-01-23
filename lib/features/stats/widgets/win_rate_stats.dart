import 'package:dota2_stat_river/features/shared/models/api_models/player_stats_api_model.dart';
import 'package:flutter/material.dart';

class WinRate extends StatelessWidget {
  final IsRadiant isRadiant;
  const WinRate({
    Key? key,
    required this.isRadiant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: isRadiant.winLose.entries
          .map<Widget>(
            (e) => Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(e.key),
                  const SizedBox(height: 5),
                  Text(e.value),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
