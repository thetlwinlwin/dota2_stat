import 'package:dota2_stat_river/features/shared/models/api_models/most_played_hero.dart';
import 'package:dota2_stat_river/features/shared/widgets/leading_img.dart';
import 'package:dota2_stat_river/providers/most_played_hero_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MostPlayedHeroesResult extends StatelessWidget {
  const MostPlayedHeroesResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        MostPlayedHeroesTitle(),
        Expanded(
          child: MostPlayedHeroesContainer(),
        ),
      ],
    );
  }
}

class MostPlayedHeroesTitle extends StatelessWidget {
  const MostPlayedHeroesTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Top 5 Most Played heroes',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Theme.of(context).colorScheme.primary,
        fontSize: 16,
      ),
    );
  }
}

class MostPlayedHeroesContainer extends ConsumerWidget {
  const MostPlayedHeroesContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(getMostPlayedHeroesProvider);

    return result.when(
      data: (data) => ListView.separated(
        padding: const EdgeInsets.all(10),
        separatorBuilder: (context, index) => const Divider(indent: 20),
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SizedBox(
            width: 150,
            child: MostPlayedHeroesCard(
              heroId: int.parse(data[index].heroId),
              data: data[index],
            ),
          ),
        ),
        itemCount: data.length,
      ),
      error: (error, _) => Center(
        child: Text(
          error.toString(),
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}

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
