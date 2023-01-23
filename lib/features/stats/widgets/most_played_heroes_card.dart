import 'package:dota2_stat_river/features/shared/models/api_models/most_played_hero.dart';
import 'package:dota2_stat_river/features/shared/widgets/leading_img.dart';
import 'package:flutter/material.dart';

class MostPlayedHeroesCard extends StatelessWidget {
  final int heroId;
  final PlayerMostPlayedHeroes data;
  const MostPlayedHeroesCard({
    Key? key,
    required this.heroId,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: [
          Expanded(flex: 2, child: LeadingImg(id: heroId)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'wins : ${data.win}',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'total : ${data.games}',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
