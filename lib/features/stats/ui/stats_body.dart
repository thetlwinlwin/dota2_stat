import 'package:dota2_stat_river/features/stats/ui/most_played_heroes_result.dart';
import 'package:dota2_stat_river/features/stats/widgets/patch_switcher.dart';
import 'package:dota2_stat_river/features/stats/widgets/stat_profile.dart';
import 'package:dota2_stat_river/features/stats/ui/stat_results.dart';
import 'package:flutter/material.dart';

class StatBody extends StatelessWidget {
  const StatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(flex: 2, child: StatProfile()),
            Expanded(child: PatchSwitcher()),
          ],
        ),
        const Expanded(
          flex: 4,
          child: StatsResults(),
        ),
        const Expanded(
          flex: 2,
          child: MostPlayedHeroesResult(),
        ),
      ],
    );
  }
}
