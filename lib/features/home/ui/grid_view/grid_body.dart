import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/herostat_api_service.dart';
import '../../../shared/widgets/loading_container.dart';
import 'hero_card.dart';

class GridBody extends ConsumerWidget {
  const GridBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(heroStatResultsProvider);

    return state.when(
      data: (topheroes) {
        return GridView.builder(
          addAutomaticKeepAlives: false,
          addRepaintBoundaries: false,
          padding: const EdgeInsets.all(10),
          itemCount: topheroes.length,
          gridDelegate: _gridDelegate(),
          itemBuilder: (_, index) {
            return HeroCard(stat: topheroes[index]);
          },
        );
      },
      loading: () => GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: _gridDelegate(),
        itemBuilder: (_, index) {
          return const LoadingContainer();
        },
      ),
      error: (message, _) => Center(child: Text(message.toString())),
    );
  }

  SliverGridDelegateWithMaxCrossAxisExtent _gridDelegate() {
    return const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 250,
      childAspectRatio: 4 / 3,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
    );
  }
}
